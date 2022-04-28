contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_0ef65e12;
uint256 sub_063424ec;
uint256 sub_3a7b3683;
address sub_51173f84Address;
mapping of uint256 vault;
uint256 sub_92986e60;
uint256 sub_d30b16f0;

function sub_063424ec(?) {
    return sub_063424ec
}

function sub_0ef65e12(?) {
    return sub_0ef65e12
}

function sub_3a7b3683(?) {
    return sub_3a7b3683
}

function sub_51173f84(?) {
    return sub_51173f84Address
}

function owner() {
    return owner
}

function sub_92986e60(?) {
    return sub_92986e60
}

function sub_d30b16f0(?) {
    return sub_d30b16f0
}

function vault(address arg1) {
    require calldata.size - 4 >= 32
    return vault[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'BOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_16906c29(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'BOwnable: caller is not the owne'
    sub_063424ec = arg1
}

function updatePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'BOwnable: caller is not the owne'
    sub_0ef65e12 = arg1
}

function updateMinimumInvestment(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'BOwnable: caller is not the owne'
    sub_3a7b3683 = arg1
}

function failSafeBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'BOwnable: caller is not the owne'
    if arg1 > eth.balance(this.address):
        revert with 0, 'insufficient amount'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_39f330a0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'BOwnable: caller is not the owne'
    require ext_code.size(sub_51173f84Address)
    call sub_51173f84Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_0ef65e12:
        return 0
    if arg1 * sub_0ef65e12 / sub_0ef65e12 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg1 * sub_0ef65e12 / 10^18)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'BOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function failSafe(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'BOwnable: caller is not the owne'
    require ext_code.size(sub_51173f84Address)
    staticcall sub_51173f84Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'failSafe :: insufficient amount'
    require ext_code.size(sub_51173f84Address)
    call sub_51173f84Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3eca2b95(?) payable {
    if ext_code.hash(msg.sender) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(msg.sender):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x6573776170424e42466f72504f4b45546f6b656e203a3a2043616c6c6572206d757374206e6f7420636f6e747261637420616464726573,
                        mem[219 len 9]
    if msg.value < sub_3a7b3683:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x6473776170424e42466f72504f4b45546f6b656e203a3a2077616c6c65742063616e2073776170206f6e6c79203120424e4220617420612074696d,
                    mem[223 len 5]
    if msg.value + vault[address(msg.sender)] < vault[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + vault[address(msg.sender)] > sub_063424ec:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x7773776170424e42466f72504f4b45546f6b656e203a3a2041207661756c742063616e20627579206f6e6c79207573696e672031303020424e,
                    mem[221 len 7]
    if not sub_0ef65e12:
        require ext_code.size(sub_51173f84Address)
        call sub_51173f84Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 43, 0x7273776170424e42466f72504f4b45546f6b656e203a3a20504f4b45207472616e73666572206661696c65, mem[271 len 21]
        if msg.value + vault[address(msg.sender)] < vault[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        vault[address(msg.sender)] += msg.value
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value + sub_92986e60 < sub_92986e60:
            revert with 0, 'SafeMath: addition overflow'
        sub_92986e60 += msg.value
        if sub_d30b16f0 < sub_d30b16f0:
            revert with 0, 'SafeMath: addition overflow'
        emit swap(0, msg.value, msg.sender);
    else:
        if msg.value * sub_0ef65e12 / sub_0ef65e12 != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(sub_51173f84Address)
        call sub_51173f84Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * sub_0ef65e12 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 43, 0x7273776170424e42466f72504f4b45546f6b656e203a3a20504f4b45207472616e73666572206661696c65, mem[271 len 21]
        if msg.value + vault[address(msg.sender)] < vault[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        vault[address(msg.sender)] += msg.value
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value + sub_92986e60 < sub_92986e60:
            revert with 0, 'SafeMath: addition overflow'
        sub_92986e60 += msg.value
        if (msg.value * sub_0ef65e12 / 10^18) + sub_d30b16f0 < sub_d30b16f0:
            revert with 0, 'SafeMath: addition overflow'
        sub_d30b16f0 += msg.value * sub_0ef65e12 / 10^18
        emit swap(msg.value * sub_0ef65e12 / 10^18, msg.value, msg.sender);
}



}
