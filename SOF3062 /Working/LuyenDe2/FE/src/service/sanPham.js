
const API_URL = "http://localhost:8080/san-pham/hien-thi";

export const fetchGetAll = async () => {
    const response = await fetch(API_URL);
    if (!response.ok) {
        throw new Error("Lỗi gọi API: " + response.status);
    }
    return await response.json();
};