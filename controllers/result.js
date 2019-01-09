const moment = require('moment');

const Result = require('../models/result');



// 讀取全部隊伍
exports.getResults = async(req, res, next) => {

    let result;
    let member;
    const getResult = await Result.fetchAll()
        .then(([rows]) => {
            // console.log(JSON.stringify(rows));
            result = rows;
        })
        .catch(err => console.log(err));
    // const getMember = await Result.fetchName(req.query.id)
    //     .then(([rows]) => {
    //         member = rows;
    //     })
    //     .catch(err => console.log(err));

    res.render('result', {
        data: result,
        // member: member,
        title: '排球盃線上報名系統'
    });
};

// 搜尋隊伍資料
exports.getSearch = (req, res, next) => {
    Result.findById(req.query.name)
        .then(([rows]) => {
            res.render('result', {
                data: rows,
                title: '排球盃線上報名系統'
            });
        })
        .catch(err => console.log(err));
};

// 新增隊伍名稱
exports.postResults = (req, res, next) => {
    Result.addTeam(req)
        .then(([rows]) => {
            res.redirect('/result');
        })
        .catch(err => console.log(err));
};

// 前往detail頁面
exports.getDetail = async(req, res, next) => {
    let member;
    let cb_data;

    const getMember = await Result.fetchDetail(req.query.t_id)
        .then(([rows]) => {
            member = rows;
        })
        .catch(err => console.log(err));

    //拿到所有為參加任何隊伍的會員,放入下拉選單
    const getCombo = await Result.fetchCombo()
        .then(([rows]) => {
            console.log(rows);
            cb_data = rows;
        })
        .catch(err => console.log(err));


    res.render('detail', {
        data: member,
        cb_data: cb_data,
        title: '排球盃線上報名系統'
    });
};

//新增隊員資料
exports.postMember = (req, res, next) => {
    Result.addMember(req.query.t_id)
        .then(([rows]) => {
            res.render('result', {
                data: rows,
                title: '排球盃線上報名系統'
            });
        })
        .catch(err => console.log(err));
};

exports.delMember = (req, res, next) => {
    Result.delMember(req.query.m_id)
        .then(([rows]) => {
            res.redirect('/result');
        })
        .catch(err => console.log(err));
};

exports.delTeam = (req, res, next) => {
    Result.delTeam(req.query.t_id)
        .then(([rows]) => {
            res.redirect('/result');
        })
        .catch(err => console.log(err));
};


// exports.getEditResult = async (req, res, next) => {

//     let categories;
//     let result;

//     const getCategories = await Category.fetchAll()
//         .then(([rows]) => {
//             categories = rows;
//             //console.log('findCategories(): ', JSON.stringify(rows));
//         })

//     const findResultById = await Result.findById(req.query.id)
//         .then(([rows]) => {
//             for (let p of rows) {
//                 p.date = moment(p.date).format('YYYY-MM-DD');
//                 console.log('p.date: ', p.date);
//             }
//             result = rows;
//             //console.log('result[0].date: ', result[0].date);
//             //console.log('findResultById(): ', JSON.stringify(rows));
//         })
//         .catch(err => console.log(err));

//     console.log('result: ', JSON.stringify(result[0].date));

//     res.render('details', {
//         data: result,
//         title: 'Edit Result',
//         categories: categories
//     });

// };

// exports.resultAddResult = (req, res, next) => {

//     Result.add(req, res)
//         .then(([rows]) => {
//             res.redirect('/');
//         })
//         .catch(err => console.log(err));
// };



// exports.resultUpdateResult = (req, res, next) => {

//     Result.updateById(req, res)
//         .then(([rows]) => {
//             res.redirect('/');
//         })
//         .catch(err => console.log(err));
// };

// exports.getDeleteResult = (req, res, next) => {
//     Result.deleteById(req.query.id)
//         .then(([rows]) => {
//             res.redirect('/result');
//         })
//         .catch();
// };