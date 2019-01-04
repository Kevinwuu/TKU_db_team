const moment = require('moment');

// const Data = require('../models/signup');


/* READ *****************************/

exports.getData = (req, res, next) => {
    // Result.fetchAll()
    //     .then(([rows]) => {
    //         // for (let p of rows) {
    //         //     p.date = moment(p.date).format('MMM D, YYYY');
    //         // }
    //         console.log(JSON.stringify(rows));
    //         //res.send(JSON.stringify(rows));
    //         res.render('result', {
    //             data: rows,
    //             title: '排球盃線上報名系統',
    //         });
    //     })
    //     .catch(err => console.log(err));

    res.render('signup', {
        title: '排球盃線上報名系統'
    });
};