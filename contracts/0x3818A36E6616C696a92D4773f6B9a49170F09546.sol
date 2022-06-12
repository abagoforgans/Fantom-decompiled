contract main {




// =====================  Runtime code  =====================


#
#  - sub_4a7cb95e(?)
#  - fight(uint256 arg1)
#
const name = 'Rarity Battle', 0

const decimals = 18

const sub_91b7c312(?) = 1000

const symbol = '', 0


address owner;
uint256 totalSupply;
uint256 ticketPrice;
uint256 sub_026a8f01;
mapping of struct sub_274ff91a;
uint256 stor6;
uint256 sub_bc5894ba;
uint256 executor;
uint256 bet;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
array of uint256 sub_ef5b0e6e;
uint256 bonusPool;
mapping of uint256 sub_b298b771;

function sub_026a8f01(?) {
    return sub_026a8f01
}

function bet() {
    return bet
}

function ticketPrice() {
    return ticketPrice
}

function totalSupply() {
    return totalSupply
}

function bonusPool() {
    return bonusPool
}

function sub_274ff91a(?) {
    require calldata.size - 4 >= 32
    return sub_274ff91a[arg1].field_0, 
           sub_274ff91a[arg1].field_256,
           sub_274ff91a[arg1].field_512,
           sub_274ff91a[arg1].field_768,
           sub_274ff91a[arg1].field_1024
}

function owner() {
    return owner
}

function balanceOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_b298b771(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b298b771[arg1]
}

function sub_bc5894ba(?) {
    return sub_bc5894ba
}

function executor() {
    return executor
}

function allowance(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function sub_ef5b0e6e(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ef5b0e6e.length
    return sub_ef5b0e6e[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_2eded922(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bc5894ba = arg1
    emit 0x91e5920a: arg1
}

function setTicketPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ticketPrice = arg1
    emit 0xc2e799ff: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw() {
    if sub_b298b771[msg.sender]:
        sub_b298b771[msg.sender] = 0
        if eth.balance(this.address) < sub_b298b771[msg.sender]:
            revert with 0, 'Address: insufficient balance'
        call msg.sender with:
           value sub_b298b771[msg.sender] wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        ('bool', 'ext_call.success')
}

function payOwner(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > stor6:
        revert with 0, 'amount too high'
    if stor6 < arg2:
        revert with 0, 17
    stor6 -= arg2
    if eth.balance(this.address) < arg2:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function approve(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Not own or approved'
    allowance[arg1][arg2] = arg3
    emit Approval(arg3, arg1, arg2);
    return 1
}

function transfer(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Not own or approved'
    if balanceOf[arg1] < arg3:
        revert with 0, 17
    balanceOf[arg1] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Not own or approved'
    if msg.value and sub_bc5894ba > -1 / msg.value:
        revert with 0, 17
    if totalSupply > !(msg.value * sub_bc5894ba):
        revert with 0, 17
    totalSupply += msg.value * sub_bc5894ba
    if balanceOf[arg1] > !(msg.value * sub_bc5894ba):
        revert with 0, 17
    balanceOf[arg1] += msg.value * sub_bc5894ba
    if stor6 > !msg.value:
        revert with 0, 17
    stor6 += msg.value
    emit Transfer((msg.value * sub_bc5894ba), arg1, arg1);
    emit 0xdc14a281: msg.value * sub_bc5894ba, 0, arg1
}

function transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Not own or approved'
    if arg1 != arg2:
        if allowance[arg2][arg1] != -1:
            if allowance[arg2][arg1] < arg4:
                revert with 0, 17
            allowance[arg2][arg1] -= arg4
            emit Approval((allowance[arg2][arg1] - arg4), arg2, arg1);
    if balanceOf[arg2] < arg4:
        revert with 0, 17
    balanceOf[arg2] -= arg4
    if balanceOf[arg3] > !arg4:
        revert with 0, 17
    balanceOf[arg3] += arg4
    emit Transfer(arg4, arg2, arg3);
    return 1
}

function exchange(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
        staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Not own or approved'
    if arg1 == executor:
        revert with 0, 'summoner cannot be executor'
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x9cc7f708 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Gold not enough'
    require ext_code.size(0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25)
    staticcall 0xfe000000000000000000000000ce761d788df608bd21bdd59d6f4b54b2e27f25.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    if ext_call.return_data[12 len 20] != this.address:
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x8856f779 with:
             gas gas_remaining wei
            args executor, arg1, executor, arg2
    else:
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x90dd2627 with:
             gas gas_remaining wei
            args arg1, executor, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, arg1, arg1);
    emit 0xdc14a281: arg2, 1, arg1
}



}
