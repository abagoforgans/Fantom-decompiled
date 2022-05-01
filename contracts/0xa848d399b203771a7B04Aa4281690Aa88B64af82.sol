contract main {




// =====================  Runtime code  =====================


#
#  - fillOrder(uint256 arg1, uint256 arg2)
#
const sub_1bea5b37(?) = 10000

const sub_fde390ae(?) = 50


uint256 stor0;
address adminAddress;
address feeAccount;
uint256 sub_b0456538;
uint256 sub_3f83f501;
uint256 sub_9e8e41d3;
uint256 poolID;
uint256 maxBlocks;
address sub_417536d7Address;
address wbnbAddress;
mapping of uint256 tokens;
mapping of uint256 sub_06b25c28;
mapping of struct orders;
uint256 orderCount;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint256 stor53860307269033384506621517352609246141857738103179602391715214271253527835459;

function sub_06b25c28(?) {
    require calldata.size - 4 >= 64
    return sub_06b25c28[address(arg1)][address(arg2)]
}

function maxBlocks() {
    return maxBlocks
}

function orderCount() {
    return orderCount
}

function sub_3f83f501(?) {
    return sub_3f83f501
}

function sub_417536d7(?) {
    return sub_417536d7Address
}

function orderFilled(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function tokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return tokens[arg1][arg2]
}

function feeAccount() {
    return feeAccount
}

function wbnb() {
    return wbnbAddress
}

function poolID() {
    return poolID
}

function sub_9e8e41d3(?) {
    return sub_9e8e41d3
}

function orders(uint256 arg1) {
    require calldata.size - 4 >= 32
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_512,
           orders[arg1].field_768,
           orders[arg1].field_1024,
           orders[arg1].field_1280,
           orders[arg1].field_1536,
           orders[arg1].field_1792,
           orders[arg1].field_2048,
           orders[arg1].field_2304
}

function sub_b0456538(?) {
    return sub_b0456538
}

function sub_e66ea3e3(?) {
    require calldata.size - 4 >= 64
    return sub_06b25c28[arg1][arg2]
}

function orderCancelled(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function balanceOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return tokens[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() {
    revert
}

function sub_87cc78fe(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if adminAddress != msg.sender:
        revert with 0, '!admin'
    maxBlocks = arg1
    emit 0xd4d46d86: msg.sender, arg1
    stor0 = 1
}

function sub_14502cd7(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if adminAddress != msg.sender:
        revert with 0, '!admin'
    sub_9e8e41d3 = arg1
    emit 0x9cec9fd5: msg.sender, arg1
    stor0 = 1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if adminAddress != msg.sender:
        revert with 0, '!admin'
    adminAddress = arg1
    emit Admin(msg.sender, arg1);
    stor0 = 1
}

function setFeeAccount(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if feeAccount != msg.sender:
        revert with 0, '!feeAccount'
    feeAccount = arg1
    emit 0xd21c2dc4: msg.sender, arg1
    stor0 = 1
}

function sub_0708a89d(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if adminAddress != msg.sender:
        revert with 0, '!admin'
    if arg1 > 50:
        revert with 0, '!safe - too high'
    sub_3f83f501 = arg1
    emit 0x34717ea8: msg.sender, arg1
    stor0 = 1
}

function sub_dfaf6ff1(?) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if adminAddress != msg.sender:
        revert with 0, '!admin'
    if arg1 > 50:
        revert with 0, '!safe - too high'
    sub_b0456538 = arg1
    emit 0x37c3984b: msg.sender, arg1
    stor0 = 1
}

function depositEther() payable {
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if msg.value + stor7713[msg.sender] < stor7713[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    stor7713[msg.sender] += msg.value
    emit Deposit(0, msg.sender, msg.value, msg.value + stor7713[msg.sender], block.timestamp);
    stor0 = 1
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require arg1 <= stor7713[msg.sender]
    if arg1 > stor7713[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    stor7713[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(0, msg.sender, arg1, stor7713[msg.sender], block.timestamp);
    stor0 = 1
}

function depositToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg2 + tokens[address(arg1)][msg.sender] < tokens[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    tokens[address(arg1)][msg.sender] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, arg2 + tokens[address(arg1)][msg.sender], block.timestamp);
    stor0 = 1
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require arg1
    require arg2 <= tokens[address(arg1)][msg.sender]
    if arg2 > tokens[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    tokens[address(arg1)][msg.sender] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][msg.sender], block.timestamp);
    stor0 = 1
}

function cancelOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require msg.sender == orders[arg1].field_256
    require arg1 == orders[arg1].field_0
    require not stor14[arg1]
    stor14[arg1] = 1
    if orders[arg1].field_1280 + tokens[stor12[arg1].field_1024][msg.sender] < tokens[stor12[arg1].field_1024][msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    tokens[stor12[arg1].field_1024][msg.sender] += orders[arg1].field_1280
    if orders[arg1].field_1280 > sub_06b25c28[stor12[arg1].field_1024][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_06b25c28[stor12[arg1].field_1024][msg.sender] -= orders[arg1].field_1280
    emit Cancel(orders[arg1].field_0, msg.sender, orders[arg1].field_512, orders[arg1].field_768, orders[arg1].field_1024, orders[arg1].field_1280, block.timestamp);
    stor0 = 1
}

function sub_b09667d2(?) {
    require calldata.size - 4 >= 192
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if arg6 > maxBlocks:
        revert with 0, '!blocks'
    if arg4 > tokens[address(arg3)][msg.sender]:
        revert with 0, '!balance'
    if arg3:
        if arg1:
            revert with 0, '!etherAddress'
    if wbnbAddress == arg3:
        if wbnbAddress == arg1:
            revert with 0, '!wbnb_or_ftm'
    if arg3 == arg1:
        revert with 0, '!tokensAddress'
    if arg3:
        if arg1:
            if orderCount + 1 < orderCount:
                revert with 0, 'SafeMath: addition overflow'
            orderCount++
            orders[stor13].field_0 = orderCount
            orders[stor13].field_256 = msg.sender
            orders[stor13].field_512 = arg1
            orders[stor13].field_768 = arg2
            orders[stor13].field_1024 = arg3
            orders[stor13].field_1280 = arg4
            orders[stor13].field_1536 = arg5
        else:
            require ext_code.size(arg3)
            staticcall arg3.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != 18:
                revert with 0, '!decimals'
            if orderCount + 1 < orderCount:
                revert with 0, 'SafeMath: addition overflow'
            orderCount++
            orders[stor13].field_0 = orderCount
            orders[stor13].field_256 = msg.sender
            orders[stor13].field_512 = arg1
            orders[stor13].field_768 = arg2
            orders[stor13].field_1024 = arg3
            orders[stor13].field_1280 = arg4
            orders[stor13].field_1536 = 1
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 18:
            revert with 0, '!decimals'
        if arg1:
            if orderCount + 1 < orderCount:
                revert with 0, 'SafeMath: addition overflow'
            orderCount++
            orders[stor13].field_0 = orderCount
            orders[stor13].field_256 = msg.sender
            orders[stor13].field_512 = arg1
            orders[stor13].field_768 = arg2
            orders[stor13].field_1024 = arg3
            orders[stor13].field_1280 = arg4
            orders[stor13].field_1536 = 0
        else:
            require ext_code.size(arg3)
            staticcall arg3.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != 18:
                revert with 0, '!decimals'
            if orderCount + 1 < orderCount:
                revert with 0, 'SafeMath: addition overflow'
            orderCount++
            orders[stor13].field_0 = orderCount
            orders[stor13].field_256 = msg.sender
            orders[stor13].field_512 = arg1
            orders[stor13].field_768 = arg2
            orders[stor13].field_1024 = arg3
            orders[stor13].field_1280 = arg4
            orders[stor13].field_1536 = 1
    orders[stor13].field_1792 = arg6
    orders[stor13].field_2048 = block.number + arg6
    orders[stor13].field_2304 = block.timestamp
    if arg4 > tokens[address(arg3)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    tokens[address(arg3)][msg.sender] = tokens[address(arg3)][address(msg.sender)] - arg4
    if arg4 + sub_06b25c28[address(arg3)][msg.sender] < sub_06b25c28[address(arg3)][msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    sub_06b25c28[address(arg3)][msg.sender] += arg4
    emit 0x2c7e132f: orderCount, msg.sender, address(arg1), arg2, address(arg3), arg4, arg6 + block.number, block.timestamp
    stor0 = 1
}



}
