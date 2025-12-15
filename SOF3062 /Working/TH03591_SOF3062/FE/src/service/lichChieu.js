const Api_URl = "http://localhost:8080/lich-chieu/hien-thi";
export const fetchLichChieu = async () => {
    try {
        const response = await fetch(Api_URl);
        if (!response.ok) {
            throw new Error("Network response was not ok");
        }
        const data = await response.json();
        return data;
    } catch (error) {
        console.error("There was a problem with the fetch operation:", error);
        throw error;
    }
};