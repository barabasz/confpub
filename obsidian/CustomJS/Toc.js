class Toc {

    // Usage in ```dataviewjs code block:
    // const {Toc} = await cJS(); Toc.printSimpleToc(dv);

    async printToc(dv) {
        // startAtLevel - highest level to be included in TOC
        const startAtLevel = 2;
        const tocTitle = 'Table of contents';

        const content = await dv.io.load(dv.current().file.path);
        const toc = content.match(new RegExp(`^#{${startAtLevel},} \\S.*`, 'mg')).map(heading => {
            const [_, level, text] = heading.match(/^(#+) (.+)$/)
            const link = dv.current().file.path + '#' + text
            return '\t'.repeat(level.length - startAtLevel) + `1. [[${link}|${text}]]`
        });
        dv.header(2, tocTitle);
        dv.paragraph(toc.join('\n'));
    }

    async printSimpleToc(dv) {
        // startAtLevel - highest level to be included in TOC
        const startAtLevel = 2;
        const content = await dv.io.load(dv.current().file.path);
        const toc = content.match(new RegExp(`^#{${startAtLevel},} \\S.*`, 'mg')).map(heading => {
            const [_, level, text] = heading.match(/^(#+) (.+)$/);
            const link = dv.current().file.path + '#' + text;
            return '\t'.repeat(level.length - startAtLevel) + `[[${link}|${text}]]`;
        })
        dv.paragraph(toc.join(' • '));
    }

}
