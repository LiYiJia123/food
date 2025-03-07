const base = {
    get() {
        return {
            url : "http://localhost:8080/shipinkucunguanli/",
            name: "shipinkucunguanli",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/shipinkucunguanli/front/index.html'
        };
    },
    getProjectName(){
        return {
            //进入首页后显示的名称
            projectName: "食品库存管理系统"
        } 
    }
}
export default base
