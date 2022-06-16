contract main {




// =====================  Runtime code  =====================


const owner = 0xf4cb4eab20236d95b1475f20d101fb509fdcb587


uint256 fee;
uint256 sub_2867baac;
uint256 sub_248b8725;
uint256 sub_3d7832e8;
uint256 totalIncome;
mapping of address sub_b8cbdd4a;
mapping of uint256 payments;

function sub_248b8725(?) {
    return sub_248b8725
}

function sub_2867baac(?) {
    return sub_2867baac
}

function sub_3d7832e8(?) {
    return sub_3d7832e8
}

function totalIncome() {
    return totalIncome
}

function sub_b8cbdd4a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b8cbdd4a[arg1]
}

function fee() {
    return fee
}

function payments(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return payments[arg1]
}

function _fallback() payable {
    revert
}

function changeFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xf4cb4eab20236d95b1475f20d101fb509fdcb587 != msg.sender:
        revert with 0, '!owner'
    fee = arg1
}

function withdraw() {
    call 0xf4cb4eab20236d95b1475f20d101fb509fdcb587 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pay() payable {
    if sub_248b8725 == -1:
        revert with 'NH{q', 17
    sub_248b8725++
    if not payments[address(msg.sender)]:
        if sub_3d7832e8 == -1:
            revert with 'NH{q', 17
        sub_3d7832e8++
    if payments[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    payments[address(msg.sender)] += msg.value
    if totalIncome > -msg.value - 1:
        revert with 'NH{q', 17
    totalIncome += msg.value
    emit Payment(msg.sender, msg.value);
}

function sub_fa706183(?) payable {
    if msg.value < fee:
        revert with 0, '!fee'
    if sub_b8cbdd4a[address(msg.sender)]:
        revert with 0, '!created'
    if block.number < 1:
        revert with 'NH{q', 17
    create2 contract with 0 wei
                    salt: sha3(block.hash(block.number - 1), msg.sender)
                    code: code.data[3202 len 13367]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b8cbdd4a[address(msg.sender)] = address(create2.new_address)
    if sub_2867baac > -2:
        revert with 'NH{q', 17
    sub_2867baac++
    if totalIncome > -msg.value - 1:
        revert with 'NH{q', 17
    totalIncome += msg.value
    emit 0x28c38ba9: msg.sender, address(create2.new_address)
}



}
