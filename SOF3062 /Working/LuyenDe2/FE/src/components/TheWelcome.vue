
@RestController
@RequestMapping("/san-pham")
@CrossOrigin("http://localhost:5173/")
public class SanPhamController {
    @Autowired
    SanPhamService sanPhamService;
    @GetMapping("/hien-thi")
    public List<SanPhamResponse> getAll(){
        return sanPhamService.getAll();
    }
    @GetMapping("/phan-trang")
    public List<SanPhamResponse> phanTrang(@RequestParam(defaultValue = "0") Integer page){
        return sanPhamService.phanTrang(page,5);
    }
    @PostMapping("/add")
    public void add(@RequestBody @Valid SanPhamRequest sanPhamRequest) {
        sanPhamService.add(sanPhamRequest);
    }
    @PutMapping("/update/{id}")
    public void update(@PathVariable Integer id,@RequestBody @Valid SanPhamRequest sanPhamRequest) {
        sanPhamService.update(id, sanPhamRequest);
    }
    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable Integer id) {
        sanPhamService.delete(id);
    }
}

service 

@Service
public class SanPhamService {
    @Autowired
    SanPhamRepository sanPhamRepository;

    public List<SanPhamResponse> getAll() {
        return sanPhamRepository.findAll().stream().map(SanPhamResponse::new).toList();
    }
    public List<SanPhamResponse> phanTrang(Integer page, Integer pageSize) {
        Pageable pageable = PageRequest.of(page, pageSize);
        return sanPhamRepository.findAll(pageable).getContent().stream().map(SanPhamResponse::new).toList();
    }
    public void add(SanPhamRequest sanPhamRequest) {
        SanPham sanPham = new SanPham();
        BeanUtils.copyProperties(sanPhamRequest, sanPham);
        sanPhamRepository.save(sanPham);
    }
    public void update(Integer id, SanPhamRequest sanPhamRequest) {
        SanPham sanPham = sanPhamRepository.findById(id).orElseThrow(() ->new ApiException("404","khong tim thay id" ));
        BeanUtils.copyProperties(sanPhamRequest, sanPham);
        sanPhamRepository.save(sanPham);
    }
    public void delete(Integer id) {
        if (sanPhamRepository.existsById(id)) {
            sanPhamRepository.deleteById(id);
        }else{
            throw new ApiException("404","khong tim thay id");
        }
    }
}

api 
public class ApiException extends RuntimeException {
    private final String code;
    public ApiException(String code, String message) {
        super(message);
        this.code = code;
    }
}

respose
@Data
public class SanPhamResponse {
    private Integer id;
    private String tenSanPham;
    private BigDecimal donGia;
    private Integer soLuong;
    private String tenDanhMuc;

    public SanPhamResponse(SanPham sp) {
        this.id = sp.getId();
        this.tenSanPham = sp.getTenSanPham();
        this.donGia = sp.getDonGia();
        this.soLuong = sp.getSoLuong();
            this.tenDanhMuc = sp.getDanhMuc().getTenDanhMuc();

    }
}

request

@Data
public class SanPhamRequest {
    @NotBlank(message = "ten sp k dc trong")
    private String tenSanPham;
    @NotBlank(message = "don gia k dc trong")
    private Float donGia;
    @NotBlank(message = "so luong k dc trong")
    private Integer soLuong;
    @NotNull(message = "danh muc k dc trong")
    private DanhMuc danhMuc;
}
