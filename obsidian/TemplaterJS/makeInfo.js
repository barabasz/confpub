class Info {
    constructor(pass) {
        this.info = pass;
    }
}

function makeInfo(pass) {
    return new Info(pass);
}

module.exports = makeInfo;
