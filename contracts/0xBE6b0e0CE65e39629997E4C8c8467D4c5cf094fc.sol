contract main {




// =====================  Runtime code  =====================


address stor0;
address tokenContractAddress;
uint256 maxPerWallet;
uint256 sub_3ea8f9ab;
uint256 bnbRaised;
uint8 stor5;
mapping of uint8 stor6;
mapping of struct stor7;
mapping of uint8 stor8;

function sub_07a9fd8e(?) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function getBnbRaised() {
    return bnbRaised
}

function isActive() {
    return bool(stor5)
}

function sub_3ea8f9ab(?) {
    return sub_3ea8f9ab
}

function maxPerWallet() {
    return maxPerWallet
}

function tokenContract() {
    return tokenContractAddress
}

function bnbRaised() {
    return bnbRaised
}

function _fallback() payable {
    revert
}

function setActive(bool arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Newb, try harder!'
    stor5 = uint8(arg1)
}

function addWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Newb, try harder!'
    stor8[address(arg1)] = 1
}

function removeWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Newb, try harder!'
    stor8[address(arg1)] = 0
}

function contributionLeft() {
    if not stor7[address(msg.sender)].field_256:
        return maxPerWallet
    if stor7[address(msg.sender)].field_0 > maxPerWallet:
        revert with 0, 'SafeMath: subtraction overflow'
    return (maxPerWallet - stor7[address(msg.sender)].field_0)
}

function burnTheRest() {
    if stor0 != msg.sender:
        revert with 0, 'Not owner, kek!'
    if stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x7450726573616c652063616e277420626520616374697665207768696c65206275726e696e672072656d61696e696e672043726f6e6a6548617473,
                    mem[223 len 5]
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe4e6f7468696e6720746f206275726e2c20646567656e7320626f75676874207468656d20616c,
                    mem[203 len 25]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 57005, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buy() payable {
    if not msg.value / 10^18:
        if not stor5:
            if not stor8[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6c4c6561726e20746f207265616420636f64652c2070726573616c65206e6f7420616374697665207965,
                            mem[206 len 22]
        if not stor6[msg.value]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        67,
                        0x77526f756e64206e756d62657273206f6e6c79206f72206d6179626520697473206265737420666f7220796f7520746f206e6f7420746f7563682074686973206f6e65,
                        mem[231 len 29]
        require ext_code.size(tokenContractAddress)
        staticcall tokenContractAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'Too late sucker!'
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if bnbRaised + (msg.value / 10^18) < bnbRaised:
            revert with 0, 'SafeMath: addition overflow'
        bnbRaised += msg.value / 10^18
        if not stor7[address(msg.sender)].field_256:
            stor7[address(msg.sender)].field_0 = msg.value
            stor7[address(msg.sender)].field_256 = 1
        else:
            if stor7[address(msg.sender)].field_0 + msg.value < stor7[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if stor7[address(msg.sender)].field_0 + msg.value > maxPerWallet:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            62,
                            0x21436f6e67726174756c6174696f6e7320446567656e2c2075207265616368656420746865206d61782043726f6e6a6548617473207065722077616c6c65,
                            mem[226 len 2]
            if stor7[address(msg.sender)].field_0 + msg.value < stor7[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            stor7[address(msg.sender)].field_0 += msg.value
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require msg.value / 10^18
        if msg.value / 10^18 * sub_3ea8f9ab / msg.value / 10^18 != sub_3ea8f9ab:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not stor5:
            if not stor8[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6c4c6561726e20746f207265616420636f64652c2070726573616c65206e6f7420616374697665207965,
                            mem[206 len 22]
        if not stor6[msg.value]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        67,
                        0x77526f756e64206e756d62657273206f6e6c79206f72206d6179626520697473206265737420666f7220796f7520746f206e6f7420746f7563682074686973206f6e65,
                        mem[231 len 29]
        require ext_code.size(tokenContractAddress)
        staticcall tokenContractAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10^18 * msg.value / 10^18 * sub_3ea8f9ab:
            revert with 0, 'Too late sucker!'
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if bnbRaised + (msg.value / 10^18) < bnbRaised:
            revert with 0, 'SafeMath: addition overflow'
        bnbRaised += msg.value / 10^18
        if not stor7[address(msg.sender)].field_256:
            stor7[address(msg.sender)].field_0 = msg.value
            stor7[address(msg.sender)].field_256 = 1
        else:
            if stor7[address(msg.sender)].field_0 + msg.value < stor7[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if stor7[address(msg.sender)].field_0 + msg.value > maxPerWallet:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            62,
                            0x21436f6e67726174756c6174696f6e7320446567656e2c2075207265616368656420746865206d61782043726f6e6a6548617473207065722077616c6c65,
                            mem[226 len 2]
            if stor7[address(msg.sender)].field_0 + msg.value < stor7[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            stor7[address(msg.sender)].field_0 += msg.value
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value / 10^18 * sub_3ea8f9ab
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
