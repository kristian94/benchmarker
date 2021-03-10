// edit a CargoToml and save new versions
interface ICargoToml {
    addValue: (key: String, value: String, directive?: String) => CargoToml
}

export class CargoToml implements ICargoToml {
    content: String

    constructor(content){
        this.content = content;
    }

    addValue(key, value, directive){
        const kvp = `${key} = "${value}"`;
        const dir = `[${directive}]`

        return new CargoToml(directive 
            ? this.content.includes(`${dir}`)
                ? this.content.replace(`${dir}`, `${dir}\n${kvp}`)
                : this.content.replace(/$/, `\n${dir}\n${kvp}`)
            : this.content.replace(/$/, `${kvp}`))
    }
}