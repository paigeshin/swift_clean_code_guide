/* Bad Example */
func calculateDensityString(source: String, endIndex: Int) -> String? {
    
    var result: String? = ""
    
    if source.isEmpty {
        return nil 
    }
    
    for index in 0..<endIndex {
        if index % 2 == 0 {
            return source 
        }
    }
    
    if source.count > 5 {
        return source
    } else {
        return nil
    }
    
}


/* Good Example */
func calculateDensityString(source: String, endIndex: Int) -> String? {
    
    var result: String? = ""
    
    if source.isEmpty {
        result = nil
    }
    
    for index in 0..<endIndex {
        if index % 2 == 0 {
            result = source
        }
    }
    
    if source.count > 5 {
        result = source
    } else {
        result = nil
    }
    
    return result
    
}

