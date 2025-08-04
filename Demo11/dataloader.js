WorkerScript.onMessage = function(msg) {
    if (msg.action == 'appendCurrentTime') {//如果是指定动作
        var data = {'time': new Date().toTimeString()};//获取当前时间
        msg.model.append(data);//list添加新数据
        msg.model.sync();   // 更新数据到ui
    }
}
