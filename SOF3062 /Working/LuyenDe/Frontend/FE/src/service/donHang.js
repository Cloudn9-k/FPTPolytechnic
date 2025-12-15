const baseUrl = "http://localhost:8080/don-hang"

export const fetchGetAllData = async() => {
    const response = await fetch(`${baseUrl}/hien-thi`)
    if(!response.ok){
        throw new Error(response.status + " : "+ response.text())
    }
    return await response.json();
}