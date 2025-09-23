import axios from "axios"
import { useEffect, useState } from "react"

const useFetch = (url)=>{
    const [loading, setLoading] = useState(false)
    const [error,setError] = useState(null)
    const [data, setData] = useState(null)
    const getData = async() => {
        try{
            setLoading(true)
            const response = await axios.get(url)
            setData(response.data)
        }catch(error){
                setError(error)
        }finally{
            setLoading(false)
        }
    }

    useEffect(()=>{
        getData()
    },[]);

    return [loading, data, error]
}

export {useFetch}