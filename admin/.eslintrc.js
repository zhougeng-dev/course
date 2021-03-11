module.exports = {
    root: true,
    env: {
        node: true
    },
    'extends': [
        'plugin:vue/essential',
        'eslint:recommended'
    ],
    rules: {
        'no-console': process.env.NODE_ENV === 'production' ? 'error' : 'off',
        'no-debugger': process.env.NODE_ENV === 'production' ? 'error' : 'off',
        'no-undef': 'off',
        'vue/no-unused-vars': 'off',
        'vue/require-v-for-key': 'off',

        'no-unused-vars': 'off',//关闭代码校验，允许定义的变量不使用
        'vue/no-unused-components': 'off'
    },
    parserOptions: {
        parser: 'babel-eslint'
    }
};
