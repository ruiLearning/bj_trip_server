<template>
    <div class="container">
        <div style="width: 22%; display: flex; background-color: white;">
            <div style="flex: 1; width: 50%; padding: 50px; display: flex; flex-direction: column; justify-content: center;">
                <div class="title">旅游推荐管理系统</div>
                <el-form :model="form" :rules="rules" ref="formRef">
                    <el-form-item prop="username" style="margin-bottom: 40px">
                        <el-input prefix-icon="el-icon-user" v-model="loginAccount" placeholder="请输入登录账号"></el-input>
                    </el-form-item>
                    <el-form-item prop="password" style="margin-bottom: 40px">
                        <el-input prefix-icon="el-icon-star-off" type="password" v-model="password" placeholder="请输入用户密码"></el-input>
                    </el-form-item>
                    <el-form-item>
                        <el-button class="gray-button" @click="login">登 录</el-button>
                    </el-form-item>
                </el-form>
            </div>
        </div>
    </div>
</template>

<script>
import { login, getUser } from '../../../api/api';

export default {
    data() {
        return {
            loginAccount: '',
            password: ''
        };
    },
    methods: {
        login() {
            if (!this.loginAccount) {
                this.$message({
                    message: '请输入用户名',
                    type: 'warning'
                });
                return;
            }
            if (!this.password) {
                this.$message({
                    message: '请输入密码',
                    type: 'warning'
                });
                return;
            }
            const params = {
                loginAccount: this.loginAccount,
                password: this.password,
                role:0
            };
            login(params).then(res => {
                if (res.code == 1000) {
                    // if (res.data.userType !== 0){
                    //   this.$message({
                    //     message: '登陆失败,请使用管理员账号登录',
                    //     type: 'error'
                    //   });
                    //   return;
                    // }
                    this.$message({
                        message: '登陆成功',
                        type: 'success'
                    });
                    const token = res.data.token;
                    this.$store.commit('user/setToken', token);
                    this.getUserInfo();
                    setTimeout(() => {
                        this.$router.push("/index");
                    }, 500);
                } else {
                    this.$message.error(res.message);
                }
            });
        },
        getUserInfo() {
            getUser().then(res => {
                if (res.code == 1000) {
                    this.$store.commit('user/setUser', JSON.stringify(res.data));
                }
            });
        },
    },
    created() {},
    mounted() {}
};
</script>

<style scoped>
.container {
    height: 100vh;
    overflow: hidden;
    background-color: #808080; /* Gray background */
    display: flex;
    align-items: center;
    justify-content: center;
    color: #666;
  background-image: url("../../../assets/image/login_bgi3.webp");
  background-size: 100%;
}

.title {
    text-align: center;
    font-size: 28px;
    margin-bottom: 50px;
    font-weight: bold;
    color: #808080; /* Gray title */
}

.gray-button {
    width: 100%;
    background-color: #808080; /* Gray button */
    border-color: #333; /* Optional: keep border color */
    color: white; /* White button text */
}

.gray-button:hover {
    background-color: #696969; /* Darker gray on hover */
    color: white; /* Keep white text on hover */
}
</style>
