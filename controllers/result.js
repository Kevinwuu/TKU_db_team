const moment = require('moment');

const Result = require('../models/result');


/* READ *****************************/

exports.getResults = (req, res, next) => {
    Result.fetchAll()
        .then(([rows]) => {
            // for (let p of rows) {
            //     p.date = moment(p.date).format('MMM D, YYYY');
            // }
            // console.log(JSON.stringify(rows));
            //res.send(JSON.stringify(rows));
            res.render('result', {
                data: rows,
                title: '排球盃線上報名系統',
            });
        })
        .catch(err => console.log(err));
};

exports.getSearch = (req, res, next) => {
    Result.findById(req.query.name)
        .then(([rows]) => {
            // for (let p of rows) {
            //     p.date = moment(p.date).format('MMM D, YYYY');
            // }
            // console.log(JSON.stringify(rows));
            //res.send(JSON.stringify(rows));
            res.render('result', {
                data: rows,
                title: '排球盃線上報名系統',
            });
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