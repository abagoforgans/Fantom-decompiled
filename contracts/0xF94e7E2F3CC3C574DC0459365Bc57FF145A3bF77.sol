contract main {




// =====================  Runtime code  =====================


address owner;
address sub_7e8c95abAddress;
address sub_2ffdbc81Address;
address sub_a094600eAddress;
address stor4;
uint256 creationFee;
uint256 sub_9ee8e198;
address devAddr;
uint8 stor8; offset 160
uint128 stor8; offset 160
address sub_0777bc02Address;

function sub_0777bc02(?) {
    return sub_0777bc02Address
}

function sub_2ffdbc81(?) {
    return sub_2ffdbc81Address
}

function sub_7e8c95ab(?) {
    return sub_7e8c95abAddress
}

function owner() {
    return owner
}

function sub_9ee8e198(?) {
    return sub_9ee8e198
}

function sub_a094600e(?) {
    return sub_a094600eAddress
}

function devAddr() {
    return devAddr
}

function creationFee() {
    return creationFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[23457 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        creationFee = 0
    else:
        require arg1
        if 750 * arg1 / arg1 != 750:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[23495 len 33], mem[197 len 31]
        creationFee = 750 * arg1 / 1000
    if creationFee > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_9ee8e198 = arg1 - creationFee
    emit FeesUpdated(creationFee, sub_9ee8e198);
}

function sub_dce5e7c8(?) payable {
    require calldata.size - 4 >= 416
    if creationFee + sub_9ee8e198 < creationFee:
        revert with 0, 'SafeMath: addition overflow'
    if creationFee + sub_9ee8e198 != msg.value:
        revert with 0, 'Wrong balance!'
    if not call.data[196]:
        revert with 0, 'Min divis'
    require call.data[196]
    if call.data[196] * call.data[68] / call.data[196] != call.data[68]:
        revert with 0, 32, 33, code.data[23495 len 33], mem[837 len 31]
    if call.data[196] * call.data[68] < 10000:
        revert with 0, 'Min divis'
    if call.data[292] > call.data[324]:
        revert with 0, 'SafeMath: subtraction overflow'
    if call.data[324] - call.data[292] > 336 * 24 * 3600:
        revert with 0, 'Invalid start-end'
    if not call.data[68]:
        revert with 0, 'Invalid params'
    require call.data[68]
    if call.data[68] * call.data[196] / call.data[68] != call.data[196]:
        revert with 0, 32, 33, code.data[23495 len 33], mem[901 len 31]
    if call.data[68] * call.data[196] <= 0:
        revert with 0, 'Invalid params'
    if call.data[260] <= 0:
        revert with 0, 'Invalid params'
    if call.data[228] < 500:
        revert with 0, 'liq > 50%'
    if call.data[228] > 1000:
        revert with 0, 'liq > 50%'
    if call.data[164] >= call.data[196]:
        revert with 0, 'SC < HC'
    if call.data[356] < 672 * 24 * 3600:
        revert with 0, 'Invalid lock'
    if sub_9ee8e198:
        require ext_code.size(sub_0777bc02Address)
        call sub_0777bc02Address.distribute() with:
           value sub_9ee8e198 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if creationFee:
        call devAddr with:
           value creationFee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not uint8(stor8.field_160):
        if not call.data[164]:
            if call.data[196] > 0:
                revert with 0, 'Invalid params'
        else:
            require call.data[164]
            if 2 * call.data[164] / call.data[164] != 2:
                revert with 0, 32, 33, code.data[23495 len 33], mem[901 len 31]
            if call.data[196] > 2 * call.data[164]:
                revert with 0, 'Invalid params'
    if not call.data[196]:
        if not call.data[196]:
            mem[928 len 16069] = code.data[7388 len 16069]
            mem[16997] = this.address
            mem[17029] = sub_2ffdbc81Address
            mem[17061] = sub_a094600eAddress
            mem[17093] = devAddr
            mem[17125] = sub_0777bc02Address
            mem[17157] = stor4
            create contract with 0 wei
                            code: code.data[7388 len 16069], address(this.address), sub_2ffdbc81Address, sub_a094600eAddress, devAddr, sub_0777bc02Address, stor4
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[1060 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(create.new_address), 0
            mem[1184 len 4] = 0
            mem[1156 len 28] = code.data[7616 len 28]
            call arg2 with:
                 gas gas_remaining wei
                args Mask(736, -512, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(create.new_address), 0) << 512, code.data[7616 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 36, code.data[23528 len 36], code.data[7624 len 20], 0, code.data[7648 len 4]
                if call.data[68]:
                    require call.data[68] >= 32
                    if not call.data[100]:
                        revert with 0, 32, 36, code.data[23528 len 36], code.data[7624 len 20], 0, code.data[7648 len 4]
            else:
                mem[1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[1092]:
                        revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
            require ext_code.size(arg2)
            staticcall arg2.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Transfer from failed!'
        else:
            require call.data[196]
            if call.data[196] * call.data[228] / call.data[196] != call.data[228]:
                revert with 0, 32, 33, code.data[23495 len 33], mem[965 len 31]
            if not call.data[196] * call.data[228]:
                mem[928 len 16069] = code.data[7388 len 16069]
                mem[16997] = this.address
                mem[17029] = sub_2ffdbc81Address
                mem[17061] = sub_a094600eAddress
                mem[17093] = devAddr
                mem[17125] = sub_0777bc02Address
                mem[17157] = stor4
                create contract with 0 wei
                                code: code.data[7388 len 16069], address(this.address), sub_2ffdbc81Address, sub_a094600eAddress, devAddr, sub_0777bc02Address, stor4
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[1060 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(create.new_address), 0
                mem[1184 len 4] = 0
                mem[1156 len 28] = code.data[7616 len 28]
                call arg2 with:
                     gas gas_remaining wei
                    args Mask(736, -512, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(create.new_address), 0) << 512, code.data[7616 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 36, code.data[23528 len 36], code.data[7624 len 20], 0, code.data[7648 len 4]
                    if call.data[68]:
                        require call.data[68] >= 32
                        if not call.data[100]:
                            revert with 0, 32, 36, code.data[23528 len 36], code.data[7624 len 20], 0, code.data[7648 len 4]
                else:
                    mem[1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[1092]:
                            revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Transfer from failed!'
            else:
                require call.data[196] * call.data[228]
                if call.data[196] * call.data[228] * call.data[260] / call.data[196] * call.data[228] != call.data[260]:
                    revert with 0, 32, 33, code.data[23495 len 33], mem[965 len 31]
                if call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[928 len 16069] = code.data[7388 len 16069]
                mem[16997] = this.address
                mem[17029] = sub_2ffdbc81Address
                mem[17061] = sub_a094600eAddress
                mem[17093] = devAddr
                mem[17125] = sub_0777bc02Address
                mem[17157] = stor4
                create contract with 0 wei
                                code: code.data[7388 len 16069], address(this.address), sub_2ffdbc81Address, sub_a094600eAddress, devAddr, sub_0777bc02Address, stor4
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[1060 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(create.new_address), Mask(224, 32, call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18) >> 32
                mem[1184 len 4] = Mask(32, 64, call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18) >> 64
                mem[1156 len 28] = code.data[7616 len 28]
                call arg2 with:
                     gas gas_remaining wei
                    args Mask(224, 32, call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18) << 480, code.data[7616 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    code.data[23528 len 36],
                                    code.data[7624 len 20],
                                    Mask(32, 64, call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18) >> 64,
                                    code.data[7648 len 4]
                    if call.data[68]:
                        require call.data[68] >= 32
                        if not call.data[100]:
                            revert with 0, 
                                        32,
                                        36,
                                        code.data[23528 len 36],
                                        code.data[7624 len 20],
                                        Mask(32, 64, call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18) >> 64,
                                        code.data[7648 len 4]
                else:
                    mem[1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[1092]:
                            revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18:
                    revert with 0, 'Transfer from failed!'
    else:
        require call.data[196]
        if call.data[196] * call.data[68] / call.data[196] != call.data[68]:
            revert with 0, 32, 33, code.data[23495 len 33], mem[901 len 31]
        if not call.data[196]:
            if call.data[196] * call.data[68] / 10^18 < call.data[196] * call.data[68] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            mem[928 len 16069] = code.data[7388 len 16069]
            mem[16997] = this.address
            mem[17029] = sub_2ffdbc81Address
            mem[17061] = sub_a094600eAddress
            mem[17093] = devAddr
            mem[17125] = sub_0777bc02Address
            mem[17157] = stor4
            create contract with 0 wei
                            code: code.data[7388 len 16069], address(this.address), sub_2ffdbc81Address, sub_a094600eAddress, devAddr, sub_0777bc02Address, stor4
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[1060 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(create.new_address), Mask(224, 32, call.data[196] * call.data[68] / 10^18) >> 32
            mem[1184 len 4] = Mask(32, 64, call.data[196] * call.data[68] / 10^18) >> 64
            mem[1156 len 28] = code.data[7616 len 28]
            call arg2 with:
                 gas gas_remaining wei
                args Mask(224, 32, call.data[196] * call.data[68] / 10^18) << 480, code.data[7616 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                code.data[23528 len 36],
                                code.data[7624 len 20],
                                Mask(32, 64, call.data[196] * call.data[68] / 10^18) >> 64,
                                code.data[7648 len 4]
                if call.data[68]:
                    require call.data[68] >= 32
                    if not call.data[100]:
                        revert with 0, 
                                    32,
                                    36,
                                    code.data[23528 len 36],
                                    code.data[7624 len 20],
                                    Mask(32, 64, call.data[196] * call.data[68] / 10^18) >> 64,
                                    code.data[7648 len 4]
            else:
                mem[1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[1092]:
                        revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
            require ext_code.size(arg2)
            staticcall arg2.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != call.data[196] * call.data[68] / 10^18:
                revert with 0, 'Transfer from failed!'
        else:
            require call.data[196]
            if call.data[196] * call.data[228] / call.data[196] != call.data[228]:
                revert with 0, 32, 33, code.data[23495 len 33], mem[965 len 31]
            if not call.data[196] * call.data[228]:
                if call.data[196] * call.data[68] / 10^18 < call.data[196] * call.data[68] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[928 len 16069] = code.data[7388 len 16069]
                mem[16997] = this.address
                mem[17029] = sub_2ffdbc81Address
                mem[17061] = sub_a094600eAddress
                mem[17093] = devAddr
                mem[17125] = sub_0777bc02Address
                mem[17157] = stor4
                create contract with 0 wei
                                code: code.data[7388 len 16069], address(this.address), sub_2ffdbc81Address, sub_a094600eAddress, devAddr, sub_0777bc02Address, stor4
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[1060 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(create.new_address), Mask(224, 32, call.data[196] * call.data[68] / 10^18) >> 32
                mem[1184 len 4] = Mask(32, 64, call.data[196] * call.data[68] / 10^18) >> 64
                mem[1156 len 28] = code.data[7616 len 28]
                call arg2 with:
                     gas gas_remaining wei
                    args Mask(224, 32, call.data[196] * call.data[68] / 10^18) << 480, code.data[7616 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    code.data[23528 len 36],
                                    code.data[7624 len 20],
                                    Mask(32, 64, call.data[196] * call.data[68] / 10^18) >> 64,
                                    code.data[7648 len 4]
                    if call.data[68]:
                        require call.data[68] >= 32
                        if not call.data[100]:
                            revert with 0, 
                                        32,
                                        36,
                                        code.data[23528 len 36],
                                        code.data[7624 len 20],
                                        Mask(32, 64, call.data[196] * call.data[68] / 10^18) >> 64,
                                        code.data[7648 len 4]
                else:
                    mem[1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[1092]:
                            revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != call.data[196] * call.data[68] / 10^18:
                    revert with 0, 'Transfer from failed!'
            else:
                require call.data[196] * call.data[228]
                if call.data[196] * call.data[228] * call.data[260] / call.data[196] * call.data[228] != call.data[260]:
                    revert with 0, 32, 33, code.data[23495 len 33], mem[965 len 31]
                if (call.data[196] * call.data[68] / 10^18) + (call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18) < call.data[196] * call.data[68] / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[928 len 16069] = code.data[7388 len 16069]
                mem[16997] = this.address
                mem[17029] = sub_2ffdbc81Address
                mem[17061] = sub_a094600eAddress
                mem[17093] = devAddr
                mem[17125] = sub_0777bc02Address
                mem[17157] = stor4
                create contract with 0 wei
                                code: code.data[7388 len 16069], address(this.address), sub_2ffdbc81Address, sub_a094600eAddress, devAddr, sub_0777bc02Address, stor4
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[1060 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(create.new_address), Mask(224, 32, (call.data[196] * call.data[68] / 10^18) + (call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18)) >> 32
                mem[1184 len 4] = Mask(32, 64, (call.data[196] * call.data[68] / 10^18) + (call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18)) >> 64
                mem[1156 len 28] = code.data[7616 len 28]
                call arg2 with:
                     gas gas_remaining wei
                    args Mask(224, 32, (call.data[196] * call.data[68] / 10^18) + (call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18)) << 480, code.data[7616 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    code.data[23528 len 36],
                                    code.data[7624 len 20],
                                    Mask(32, 64, (call.data[196] * call.data[68] / 10^18) + (call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18)) >> 64,
                                    code.data[7648 len 4]
                    if call.data[68]:
                        require call.data[68] >= 32
                        if not call.data[100]:
                            revert with 0, 
                                        32,
                                        36,
                                        code.data[23528 len 36],
                                        code.data[7624 len 20],
                                        Mask(32, 64, (call.data[196] * call.data[68] / 10^18) + (call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18)) >> 64,
                                        code.data[7648 len 4]
                else:
                    mem[1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[1092]:
                            revert with 0, 32, 36, code.data[23528 len 36], mem[ceil32(return_data.size) + 1165 len 28]
                require ext_code.size(arg2)
                staticcall arg2.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != (call.data[196] * call.data[68] / 10^18) + (call.data[196] * call.data[228] * call.data[260] / 1000 * 10^18):
                    revert with 0, 'Transfer from failed!'
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf8d74c33 with:
         gas gas_remaining wei
        args call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324], call.data[356]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7e8c95abAddress)
    staticcall sub_7e8c95abAddress.presalesLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x4d12312a with:
         gas gas_remaining wei
        args address(arg1), address(arg2), sub_a094600eAddress, arg3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7e8c95abAddress)
    call sub_7e8c95abAddress.registerPresale(address arg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor8.field_160) = 0
}



}
