contract main {




// =====================  Runtime code  =====================


#
#  - sub_3c9dd1a3(?)
#
address owner;
address sumAddress;
uint256 startTime;
uint8 stor3;
uint256 claimTime;
uint256 available;
uint256 totalBalance;
mapping of uint256 balances;

function claimTime() {
    return claimTime
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function available() {
    return available
}

function startTime() {
    return startTime
}

function sum() {
    return sumAddress
}

function owner() {
    return owner
}

function totalBalance() {
    return totalBalance
}

function withdrawal() {
    return bool(stor3)
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

function sub_3c0cc8ac(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = uint8(bool(arg1))
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

function enter() payable {
    if block.timestamp <= startTime:
        revert with 0, '!open'
    if msg.value < 10 * 10^18:
        revert with 0, 'min limit'
    if msg.value > available:
        revert with 0, '!available'
    if balances[msg.sender] > !msg.value:
        revert with 0, 17
    if balances[msg.sender] + msg.value > 100 * 10^18:
        revert with 0, 'max limit'
    if available < msg.value:
        revert with 0, 17
    available -= msg.value
    if totalBalance > !msg.value:
        revert with 0, 17
    totalBalance += msg.value
    if balances[msg.sender] > !msg.value:
        revert with 0, 17
    balances[msg.sender] += msg.value
    emit Enter(msg.sender, msg.value);
}

function lp() {
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.0xe6a43905 with:
            gas gas_remaining wei
           args sumAddress, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_6846c1ef(?) {
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.0xe6a43905 with:
            gas gas_remaining wei
           args sumAddress, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function claimable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.0xe6a43905 with:
            gas gas_remaining wei
           args sumAddress, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.0xe6a43905 with:
            gas gas_remaining wei
           args sumAddress, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if balances[address(arg1)] and 0 > -1 / balances[address(arg1)]:
            revert with 0, 17
        if not totalBalance:
            revert with 0, 18
        return (0 / totalBalance)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balances[address(arg1)] and ext_call.return_data[0] > -1 / balances[address(arg1)]:
        revert with 0, 17
    if not totalBalance:
        revert with 0, 18
    return (balances[address(arg1)] * ext_call.return_data[0] / totalBalance)
}

function leave() {
    if stor3:
        call msg.sender with:
           value balances[msg.sender] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if block.timestamp <= claimTime:
            revert with 0, 'locked'
        if claimTime <= 0:
            revert with 0, 'locked'
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.0xe6a43905 with:
                gas gas_remaining wei
               args sumAddress, address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.0xe6a43905 with:
                        gas gas_remaining wei
                       args sumAddress, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    if balances[address(msg.sender)] and 0 > -1 / balances[address(msg.sender)]:
                        revert with 0, 17
                    if not totalBalance:
                        revert with 0, 18
                    if 0 / totalBalance:
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.0xe6a43905 with:
                                gas gas_remaining wei
                               args sumAddress, address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.0xe6a43905 with:
                                gas gas_remaining wei
                               args sumAddress, address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[0] >= 0 / totalBalance:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / totalBalance
                        else:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Leave(msg.sender, 0 / totalBalance);
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if balances[address(msg.sender)] and ext_call.return_data[0] > -1 / balances[address(msg.sender)]:
                        revert with 0, 17
                    if not totalBalance:
                        revert with 0, 18
                    if balances[address(msg.sender)] * ext_call.return_data[0] / totalBalance:
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.0xe6a43905 with:
                                gas gas_remaining wei
                               args sumAddress, address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                        staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.0xe6a43905 with:
                                gas gas_remaining wei
                               args sumAddress, address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if ext_call.return_data[0] >= balances[address(msg.sender)] * ext_call.return_data[0] / totalBalance:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, balances[address(msg.sender)] * ext_call.return_data[0] / totalBalance
                        else:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Leave(msg.sender, balances[address(msg.sender)] * ext_call.return_data[0] / totalBalance);
}



}
