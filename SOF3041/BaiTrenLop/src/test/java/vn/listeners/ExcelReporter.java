package vn.listeners;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.testng.ITest;
import org.testng.ITestContext;
import org.testng.ITestListener;
import org.testng.ITestResult;

import java.io.FileOutputStream;

public class ExcelReporter implements ITestListener {
    private XSSFWorkbook workbook;
    private XSSFSheet sheet;
    private int rowCount = 0;

    @Override
    public void onStart(ITest context){
        workbook = new XSSFWorkbook();
        sheet = workbook.createSheet("TestResult");
        // tạo header
        XSSFRow header = sheet.createRow(rowCount++);
        header.createCell(0).setCellValue("Class");
        header.createCell(1).setCellValue("Method");
        header.createCell(2).setCellValue("Status");
    }
    @Override
    public void onTestSuccess(ITestResult result){
        writeReport(result);
        // ghi kết quả
    }
    @Override
    public void onTestFailure(ITestResult result){
        writeReport(result);
        // ghi kết quả
    }
    @Override
    public void onTestSkipped(ITestResult result){
        writeReport(result);
    //ghi kết quả
    }
    @Override
    public void onFinish(ITestContext context){
        try(FileOutputStream fileOut = new FileOutputStream("test-output/result.xls")){
            workbook.write(fileOut);
            workbook.close();
            System.out.println("Excel Report has been successfully written!");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    private void writeReport(ITestResult result,String status){
        XSSFRow row = sheet.createRow(rowCount++);
        row.createCell(0).setCellValue(result.getClass().getName());
        row.createCell(1).setCellValue(result.getMethod().getMethodName());
        row.createCell(2).setCellValue(result.getStatus());
    }



}
