const moment = require('moment');

const Data = require('../models/signup');


/* READ *****************************/

exports.getData = async(req, res, next) => {

    let school;
    let major;
    const getSchool = await Data.fetchSchool()
        .then(([rows]) => {
            // console.log(JSON.stringify(rows));
            //res.send(JSON.stringify(rows));
            school = rows
        })
        .catch(err => console.log(err));
    const getMajor = await Data.fetchMajor()
        .then(([rows]) => {
            // console.log(JSON.stringify(rows));
            //res.send(JSON.stringify(rows));
            major = rows
        })
        .catch(err => console.log(err));

    res.render('signup', {
        school: school,
        major: major,
        title: '排球盃線上報名系統',
    });

};

exports.postAddMember = (req, res, next) => {
    Data.addMember(req, res)
        .then(([rows]) => {
            res.redirect('/');
        })
        .catch(err => console.log(err));

};