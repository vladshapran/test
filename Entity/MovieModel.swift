struct Result{
    let page: Int?
    let total_pages: Int?
    let results: [Movie?]
}

struct MovieModel {
    let backdrop_path: String?
    let original_title: String?
    let overview: String?
    let release_date: String?
    let genre_ids: [Int?]
}
