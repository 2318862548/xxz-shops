<template>
    <div class="Particulars">
        <div v-for="particular in particulars" :key="particular.id">
            <h1>{{particular.username}}</h1>
            <p>人物生平：<br><span>{{particular.describe}}</span></p>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return {
                id:this.$route.params.id,
                particulars:[]
            }
        },
        created(){
            this.postparticulars()
        },
        methods:{
            postparticulars(){
                // console.log(this.id)
                var that = this;
                this.$http.get(`/api/user/getID?id=${this.id}`).then(err => {
                    // console.log(err)
                    if(err.body.err_code === 0) {
                        that.particulars = JSON.parse(JSON.stringify(err.body.message));
                        console.log(this.particulars)
                        if(!that.particulars[0].describe){
                            this.particulars[0].describe = '暂无数据'
                        }
                    }
                    
            console.info("particulars", this.particulars)
                    
                })
            },    
            
        }
    }
</script>
<style lang="scss" scoped>
.Particulars {
    width: 70%;
    background-color:#ccc; 
    margin: 0 auto;
    border-radius: 15px;
    p {
        text-align: left;
        span {
            display: block;
            text-indent: 2em;
        }
    }
}
</style>
