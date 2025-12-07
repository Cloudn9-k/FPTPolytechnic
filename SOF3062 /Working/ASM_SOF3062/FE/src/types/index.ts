// FE/src/types/index.ts

export interface Category {
    id: string;
    name: string;
}

export interface Product {
    id: number;
    name: string;
    image: string;
    price: number;
    createDate: string; 
    available: boolean;
    category?: Category;
}

export interface Account {
    username: string;
    fullname: string;
    email: string;
    photo: string;
    admin: boolean;
}