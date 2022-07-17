contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_53aa0bdc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = address(arg1)
}

function sub_aa265f54(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
}

function sub_b3f565fa(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = address(arg1)
}

function sub_c5443586(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = address(arg1)
}

function totalSupply() {
    require ext_code.size(stor3)
    staticcall stor3.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMaxLands() {
    require ext_code.size(stor3)
    staticcall stor3.0xa0d27be0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1021a999(?) {
    require ext_code.size(stor3)
    staticcall stor3.0x1021a999 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_51859b58(?) {
    require ext_code.size(stor3)
    staticcall stor3.0x51859b58 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f1667568(?) {
    require ext_code.size(stor3)
    staticcall stor3.0xf1667568 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getLandSize() {
    require ext_code.size(stor3)
    staticcall stor3.0xcc0d2fa5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'onlyRL: caller is not the rl'
    require ext_code.size(stor3)
    call stor3.0xbf191129 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6dc323c6(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor3)
    staticcall stor3.0x6dc323c6 with:
            gas gas_remaining wei
           args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8a3a3713(?) {
    require ext_code.size(stor3)
    staticcall stor3.0x8a3a3713 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
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

function getLandFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x4e575e16 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function getSummoner(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0xf31d1c97 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function getLandIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x8d32219d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function getLandIncome(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0xd889f2dd with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function getLandSummoners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0xf96d14cc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function getLandCoordinates(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x51450056 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[64]
}

function getSummonerCoordinates(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x8a3786a7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[64]
}

function landState(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x49350a83 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    return bool(ext_call.return_data[0]), bool(ext_call.return_data[32])
}

function getLandState(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x1218c6d4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    return bool(ext_call.return_data[0]), bool(ext_call.return_data[32])
}

function mulDiv(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        if not arg3:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / arg3)
    if arg1 and arg2 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * arg2 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg3:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * arg2 / arg3)
}

function getClaimFee() {
    require ext_code.size(stor3)
    staticcall stor3.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / 1000 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if 10 > !(5 * ext_call.return_data[0] / 1000):
        revert with 0, 17
    if (5 * ext_call.return_data[0] / 1000) + 10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    return ((5 * 10^18 * ext_call.return_data[0] / 1000) + 10 * 10^18)
}

function setLandState(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'no owner .'
    require ext_code.size(stor3)
    call stor3.0xe176c00a with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setLandFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, ' no owner .'
    require ext_code.size(stor3)
    staticcall stor3.0x8a3a3713 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'ManageTickets, error .'
    require ext_code.size(stor3)
    call stor3.0x2ef8f33c with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeSummoner(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor2)
    call stor2.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, ' rl invalid .'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, ' summoner invalid .'
    require ext_code.size(stor3)
    call stor3.0x5b71151c with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function move(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, ' no owner .'
    require ext_code.size(stor3)
    call stor3.0xfa7c9bcf with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if ext_call.return_data[64] > msg.value:
            revert with 0, 'moveFees error !'
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor3)
        staticcall stor3.0x51859b58 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[64]:
            call stor1 with:
                 gas 2300 wei
        else:
            if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
                revert with 0, 17
            if not ext_call.return_data[64]:
                revert with 0, 18
            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            call stor1 with:
               value ext_call.return_data[64] * ext_call.return_data[0] / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        staticcall stor3.0x1021a999 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[64]:
            call stor4 with:
                 gas 2300 wei
        else:
            if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
                revert with 0, 17
            if not ext_call.return_data[64]:
                revert with 0, 18
            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            call stor4 with:
               value ext_call.return_data[64] * ext_call.return_data[0] / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        staticcall stor3.0x1021a999 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        staticcall stor3.0x51859b58 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if 100 < 2 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[64]:
            call address(ext_call.return_data[0]) with:
                 gas 2300 wei
        else:
            if ext_call.return_data[64] and (-2 * ext_call.return_data[0]) + 100 > -1 / ext_call.return_data[64]:
                revert with 0, 17
            if not ext_call.return_data[64]:
                revert with 0, 18
            if (100 * ext_call.return_data[64]) - (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[0] * ext_call.return_data[64]) / ext_call.return_data[64] != (-2 * ext_call.return_data[0]) + 100:
                revert with 0, 'SafeMath: multiplication overflow'
            call address(ext_call.return_data[0]) with:
               value (100 * ext_call.return_data[64]) - (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[0] * ext_call.return_data[64]) / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_f9cbf4ff(?) {
    require calldata.size - 4 >= 160
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'no owner .'
    if ceil32(arg2.length) <= arg2.length:
        if ceil32(arg3.length) <= arg3.length:
            require ext_code.size(stor3)
            call stor3.0xf9cbf4ff with:
                 gas gas_remaining wei
                args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], ext_call.return_data[arg5.length + -ceil32(ceil32(arg5.length)) + 31 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256), ceil32(arg2.length) + 192, arg4, ceil32(arg3.length) + ceil32(arg2.length) + 224
        else:
            mem[ceil32(arg3.length) + ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 327] = arg5.length
            mem[ceil32(arg3.length) + ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 359 len ceil32(arg5.length)] = arg5[all], ext_call.return_data[arg5.length + -ceil32(ceil32(arg5.length)) + 31 len ceil32(arg5.length) - arg5.length]
            if ceil32(arg5.length) > arg5.length:
                mem[ceil32(arg3.length) + ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + arg5.length + 359] = 0
            require ext_code.size(stor3)
            call stor3.0xf9cbf4ff with:
                 gas gas_remaining wei
                args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + ceil32(arg2.length) + arg3.length + 359 len ceil32(arg5.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg2.length) + 192, arg4, ceil32(arg3.length) + ceil32(arg2.length) + 224
    else:
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 295] = arg3.length
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 327 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg5.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
        if ceil32(arg3.length) > arg3.length:
            mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + arg3.length + 327] = 0
        mem[ceil32(arg3.length) + ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 327] = arg5.length
        require ext_code.size(stor3)
        call stor3.0xf9cbf4ff with:
             gas gas_remaining wei
            args arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + arg2.length + 327 len ceil32(arg3.length) + ceil32(arg2.length) + -arg2.length + 32], Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], ext_call.return_data[arg5.length + -ceil32(ceil32(arg5.length)) + 31 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256), ceil32(arg2.length) + 192, arg4, ceil32(arg3.length) + ceil32(arg2.length) + 224
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function loadLandInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0x4aaa571500000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor3)
    staticcall stor3.0x4aaa5715 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 160
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 == bool(mem[96 len 4], Mask(224, 32, arg1) >> 32)
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= test266151307()
    require uint32(arg1), mem[132 len 28] + 127 < return_data.size + 96
    _6 = mem[uint32(arg1), mem[132 len 28] + 96]
    if mem[uint32(arg1), mem[132 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _6
    require _5 + _6 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_6)] = mem[_5 + 128 len ceil32(_6)]
    if ceil32(_6) <= _6:
        _222 = mem[160]
        require mem[160] <= test266151307()
        require mem[160] + 127 < return_data.size + 96
        _224 = mem[mem[160] + 96]
        if mem[mem[160] + 96] > test266151307():
            revert with 0, 65
        _226 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1
        mem[_226] = _224
        require _222 + _224 + 32 <= return_data.size
        mem[_226 + 32 len ceil32(_224)] = mem[_222 + 128 len ceil32(_224)]
        if ceil32(_224) <= _224:
            _436 = mem[192]
            _437 = mem[224]
            require mem[224] <= test266151307()
            require mem[224] + 127 < return_data.size + 96
            _444 = mem[mem[224] + 96]
            if mem[mem[224] + 96] > test266151307():
                revert with 0, 65
            _448 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1
            mem[_448] = _444
            require _437 + _444 + 32 <= return_data.size
            mem[_448 + 32 len ceil32(_444)] = mem[_437 + 128 len ceil32(_444)]
            if ceil32(_444) > _444:
                mem[_448 + _444 + 32] = 0
            mem[mem[64]] = bool(_4)
            mem[mem[64] + 32] = 160
            mem[mem[64] + 160] = _6
            mem[mem[64] + 192 len ceil32(_6)] = mem[ceil32(return_data.size) + 128 len ceil32(_6)]
            if ceil32(_6) > _6:
                mem[mem[64] + _6 + 192] = 0
            mem[mem[64] + 64] = ceil32(_6) + 192
            mem[ceil32(_6) + mem[64] + 192] = _224
            mem[ceil32(_6) + mem[64] + 224 len ceil32(_224)] = mem[_226 + 32 len ceil32(_224)]
            if ceil32(_224) <= _224:
                mem[mem[64] + 96] = _436
                mem[mem[64] + 128] = ceil32(_224) + ceil32(_6) + 224
                mem[ceil32(_224) + ceil32(_6) + mem[64] + 224] = _444
                mem[ceil32(_224) + ceil32(_6) + mem[64] + 256 len ceil32(_444)] = mem[_448 + 32 len ceil32(_444)]
                if ceil32(_444) > _444:
                    mem[ceil32(_224) + ceil32(_6) + mem[64] + _444 + 256] = 0
                return bool(_4), 
                       Array(len=_6, data=mem[mem[64] + 192 len ceil32(_224) + ceil32(_6) + 32], _444, mem[mem[64] + ceil32(_224) + ceil32(_6) + 256 len ceil32(_444)]),
                       ceil32(_6) + 192,
                       _436,
                       ceil32(_224) + ceil32(_6) + 224
            mem[ceil32(_6) + mem[64] + _224 + 224] = 0
            mem[mem[64] + 96] = _436
            mem[mem[64] + 128] = ceil32(_224) + ceil32(_6) + 224
            mem[ceil32(_224) + ceil32(_6) + mem[64] + 224] = _444
            mem[ceil32(_224) + ceil32(_6) + mem[64] + 256 len ceil32(_444)] = mem[_448 + 32 len ceil32(_444)]
            if ceil32(_444) > _444:
                mem[ceil32(_224) + ceil32(_6) + mem[64] + _444 + 256] = 0
            return bool(_4), 
                   160,
                   ceil32(_6) + 192,
                   _436,
                   ceil32(_224) + ceil32(_6) + 224,
                   _6,
                   mem[mem[64] + 192 len ceil32(_6) + _224 + 32],
                   0,
                   mem[mem[64] + ceil32(_6) + _224 + 256 len ceil32(_444) + ceil32(_224) - _224]
        mem[_226 + _224 + 32] = 0
        _440 = mem[192]
        _441 = mem[224]
        require mem[224] <= test266151307()
        require mem[224] + 127 < return_data.size + 96
        _446 = mem[mem[224] + 96]
        if mem[mem[224] + 96] > test266151307():
            revert with 0, 65
        _450 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1
        mem[_450] = _446
        require _441 + _446 + 32 <= return_data.size
        mem[_450 + 32 len ceil32(_446)] = mem[_441 + 128 len ceil32(_446)]
        if ceil32(_446) > _446:
            mem[_450 + _446 + 32] = 0
        mem[mem[64]] = bool(_4)
        mem[mem[64] + 32] = 160
        mem[mem[64] + 160] = _6
        mem[mem[64] + 192 len ceil32(_6)] = mem[ceil32(return_data.size) + 128 len ceil32(_6)]
        if ceil32(_6) > _6:
            mem[mem[64] + _6 + 192] = 0
        mem[mem[64] + 64] = ceil32(_6) + 192
        mem[ceil32(_6) + mem[64] + 192] = _224
        mem[ceil32(_6) + mem[64] + 224 len ceil32(_224)] = mem[_226 + 32 len ceil32(_224)]
        if ceil32(_224) <= _224:
            mem[mem[64] + 96] = _440
            mem[mem[64] + 128] = ceil32(_224) + ceil32(_6) + 224
            mem[ceil32(_224) + ceil32(_6) + mem[64] + 224] = _446
            mem[ceil32(_224) + ceil32(_6) + mem[64] + 256 len ceil32(_446)] = mem[_450 + 32 len ceil32(_446)]
            if ceil32(_446) > _446:
                mem[ceil32(_224) + ceil32(_6) + mem[64] + _446 + 256] = 0
            return bool(_4), 
                   Array(len=_6, data=mem[mem[64] + 192 len ceil32(_224) + ceil32(_6) + 32], _446, mem[mem[64] + ceil32(_224) + ceil32(_6) + 256 len ceil32(_446)]),
                   ceil32(_6) + 192,
                   _440,
                   ceil32(_224) + ceil32(_6) + 224
        mem[ceil32(_6) + mem[64] + _224 + 224] = 0
        mem[mem[64] + 96] = _440
        mem[mem[64] + 128] = ceil32(_224) + ceil32(_6) + 224
        mem[ceil32(_224) + ceil32(_6) + mem[64] + 224] = _446
        mem[ceil32(_224) + ceil32(_6) + mem[64] + 256 len ceil32(_446)] = mem[_450 + 32 len ceil32(_446)]
        if ceil32(_446) > _446:
            mem[ceil32(_224) + ceil32(_6) + mem[64] + _446 + 256] = 0
        return bool(_4), 
               160,
               ceil32(_6) + 192,
               _440,
               ceil32(_224) + ceil32(_6) + 224,
               _6,
               mem[mem[64] + 192 len ceil32(_6) + _224 + 32],
               0,
               mem[mem[64] + ceil32(_6) + _224 + 256 len ceil32(_446) + ceil32(_224) - _224]
    mem[ceil32(return_data.size) + _6 + 128] = 0
    _223 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 127 < return_data.size + 96
    _225 = mem[mem[160] + 96]
    if mem[mem[160] + 96] > test266151307():
        revert with 0, 65
    _227 = mem[64]
    if mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1
    mem[_227] = _225
    require _223 + _225 + 32 <= return_data.size
    mem[_227 + 32 len ceil32(_225)] = mem[_223 + 128 len ceil32(_225)]
    if ceil32(_225) <= _225:
        _438 = mem[192]
        _439 = mem[224]
        require mem[224] <= test266151307()
        require mem[224] + 127 < return_data.size + 96
        _445 = mem[mem[224] + 96]
        if mem[mem[224] + 96] > test266151307():
            revert with 0, 65
        _449 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1
        mem[_449] = _445
        require _439 + _445 + 32 <= return_data.size
        mem[_449 + 32 len ceil32(_445)] = mem[_439 + 128 len ceil32(_445)]
        if ceil32(_445) > _445:
            mem[_449 + _445 + 32] = 0
        mem[mem[64]] = bool(_4)
        mem[mem[64] + 32] = 160
        mem[mem[64] + 160] = _6
        mem[mem[64] + 192 len ceil32(_6)] = mem[ceil32(return_data.size) + 128 len ceil32(_6)]
        if ceil32(_6) > _6:
            mem[mem[64] + _6 + 192] = 0
        mem[mem[64] + 64] = ceil32(_6) + 192
        mem[ceil32(_6) + mem[64] + 192] = _225
        mem[ceil32(_6) + mem[64] + 224 len ceil32(_225)] = mem[_227 + 32 len ceil32(_225)]
        if ceil32(_225) <= _225:
            mem[mem[64] + 96] = _438
            mem[mem[64] + 128] = ceil32(_225) + ceil32(_6) + 224
            mem[ceil32(_225) + ceil32(_6) + mem[64] + 224] = _445
            mem[ceil32(_225) + ceil32(_6) + mem[64] + 256 len ceil32(_445)] = mem[_449 + 32 len ceil32(_445)]
            if ceil32(_445) > _445:
                mem[ceil32(_225) + ceil32(_6) + mem[64] + _445 + 256] = 0
            return bool(_4), 
                   Array(len=_6, data=mem[mem[64] + 192 len ceil32(_225) + ceil32(_6) + 32], _445, mem[mem[64] + ceil32(_225) + ceil32(_6) + 256 len ceil32(_445)]),
                   ceil32(_6) + 192,
                   _438,
                   ceil32(_225) + ceil32(_6) + 224
        mem[ceil32(_6) + mem[64] + _225 + 224] = 0
        mem[mem[64] + 96] = _438
        mem[mem[64] + 128] = ceil32(_225) + ceil32(_6) + 224
        mem[ceil32(_225) + ceil32(_6) + mem[64] + 224] = _445
        mem[ceil32(_225) + ceil32(_6) + mem[64] + 256 len ceil32(_445)] = mem[_449 + 32 len ceil32(_445)]
        if ceil32(_445) > _445:
            mem[ceil32(_225) + ceil32(_6) + mem[64] + _445 + 256] = 0
        return bool(_4), 
               160,
               ceil32(_6) + 192,
               _438,
               ceil32(_225) + ceil32(_6) + 224,
               _6,
               mem[mem[64] + 192 len ceil32(_6) + _225 + 32],
               0,
               mem[mem[64] + ceil32(_6) + _225 + 256 len ceil32(_445) + ceil32(_225) - _225]
    mem[_227 + _225 + 32] = 0
    _442 = mem[192]
    _443 = mem[224]
    require mem[224] <= test266151307()
    require mem[224] + 127 < return_data.size + 96
    _447 = mem[mem[224] + 96]
    if mem[mem[224] + 96] > test266151307():
        revert with 0, 65
    _451 = mem[64]
    if mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[mem[224] + 96])) + 1
    mem[_451] = _447
    require _443 + _447 + 32 <= return_data.size
    mem[_451 + 32 len ceil32(_447)] = mem[_443 + 128 len ceil32(_447)]
    if ceil32(_447) > _447:
        mem[_451 + _447 + 32] = 0
    mem[mem[64]] = bool(_4)
    mem[mem[64] + 32] = 160
    mem[mem[64] + 160] = _6
    mem[mem[64] + 192 len ceil32(_6)] = mem[ceil32(return_data.size) + 128 len ceil32(_6)]
    if ceil32(_6) > _6:
        mem[mem[64] + _6 + 192] = 0
    mem[mem[64] + 64] = ceil32(_6) + 192
    mem[ceil32(_6) + mem[64] + 192] = _225
    mem[ceil32(_6) + mem[64] + 224 len ceil32(_225)] = mem[_227 + 32 len ceil32(_225)]
    if ceil32(_225) <= _225:
        mem[mem[64] + 96] = _442
        mem[mem[64] + 128] = ceil32(_225) + ceil32(_6) + 224
        mem[ceil32(_225) + ceil32(_6) + mem[64] + 224] = _447
        mem[ceil32(_225) + ceil32(_6) + mem[64] + 256 len ceil32(_447)] = mem[_451 + 32 len ceil32(_447)]
        if ceil32(_447) > _447:
            mem[ceil32(_225) + ceil32(_6) + mem[64] + _447 + 256] = 0
        return bool(_4), 
               Array(len=_6, data=mem[mem[64] + 192 len ceil32(_225) + ceil32(_6) + 32], _447, mem[mem[64] + ceil32(_225) + ceil32(_6) + 256 len ceil32(_447)]),
               ceil32(_6) + 192,
               _442,
               ceil32(_225) + ceil32(_6) + 224
    mem[ceil32(_6) + mem[64] + _225 + 224] = 0
    mem[mem[64] + 96] = _442
    mem[mem[64] + 128] = ceil32(_225) + ceil32(_6) + 224
    mem[ceil32(_225) + ceil32(_6) + mem[64] + 224] = _447
    mem[ceil32(_225) + ceil32(_6) + mem[64] + 256 len ceil32(_447)] = mem[_451 + 32 len ceil32(_447)]
    if ceil32(_447) > _447:
        mem[ceil32(_225) + ceil32(_6) + mem[64] + _447 + 256] = 0
    return bool(_4), 
           160,
           ceil32(_6) + 192,
           _442,
           ceil32(_225) + ceil32(_6) + 224,
           _6,
           mem[mem[64] + 192 len ceil32(_6) + _225 + 32],
           0,
           mem[mem[64] + ceil32(_6) + _225 + 256 len ceil32(_447) + ceil32(_225) - _225]
}



}
