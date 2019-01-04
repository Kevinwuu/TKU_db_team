const db = require('../util/database');

module.exports = class Post {
    constructor(id, title, category, date, article) {
        this.id = id;
        this.title = title;
        this.category = category;
        this.date = date;
        this.article = article;
    }

    // CREATE
    // static add(req, res) {
    //     //console.log('add():', req.body.name, req.body.price);
    //     return db.execute(
    //         'INSERT INTO post (title, category, date, article) VALUES (?, ?, ?, ?)', [req.body.title, req.body.category, req.body.date, req.body.editor1]
    //     );
    // }

    // READ
    static fetchAll() {
        return db.execute('SELECT * FROM post');
    }
};