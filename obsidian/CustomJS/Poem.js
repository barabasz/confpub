class Poem {

    printInfo(dv) {
        let a = dv.current().file.frontmatter.author;
        let t = dv.current().file.frontmatter.title;
        var trans = dv.current().file.frontmatter.transfrom + " " + dv.current().file.frontmatter.translator;
        dv.span(a);
        dv.header(2, t);
        dv.el("hr", "", { cls: "dataview dataview-class" });
        dv.span(trans);
    }
    
}
