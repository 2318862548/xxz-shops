<template>
    <div class="commodity">
        <ul>
            <li v-for="(item, key, index) in getPageList" :key="index">
                <img :src="item.img" alt="">
                <p>贵称：<span>{{item.username}}</span></p>
                <p>贵别：<span>{{item.gender}}</span></p>
                <p>贵龄：<span>{{item.age}}</span></p>
                <button @click="discribe(item.id)">查看详情</button>
            </li>
        </ul>
    </div>
</template>
<script>
    export default {
        data () {
            return {
                getPageList:[]
            }
        },
        created(){
            this.getPage()
        },
        methods:{
            getPage(){
                this.$http.get('/api/user/getData').then(err => {
                    if(err.body.err_code === 0) {
                        this.getPageList = err.body.message
                        console.log(this.getPageList)
                    }
                })
                console.log(6666)
            },
            discribe(id){
                // 跳转
                this.$router.push('/particulars/' + id)

                // console.log(id)
                
            }
        }
    }
</script>
<style lang="scss" scoped>
.commodity {
   width: 70%;
   margin: 0 auto ;
   background-color: #ccc;
   ul {
       width: 100%;
       li {
           width: 49%;
           float: left;
           margin: 10px 0;
           img {
               width: 70%;
           }
       }
   }
}
</style>
