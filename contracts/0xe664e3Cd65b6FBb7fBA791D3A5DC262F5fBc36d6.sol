contract main {




// =====================  Runtime code  =====================


const name = 'Beep', 0

const decimals = 18

const symbol = 'BEEP', 0


address owner;
mapping of uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address devAddress;
address stor6;
uint8 taxPercent; offset 160
address stor7;
uint256 sub_431c147a;
uint256 sub_3de07520;
uint8 sub_2cb6d078;
uint8 sub_1b1dc652; offset 8
uint8 sub_cdbdc6c8; offset 16
uint8 sub_cae2c5c5; offset 24
uint8 sub_af530ced; offset 32
uint8 sub_22d45a51; offset 40
uint256 stor10;
uint256 sub_a4cb190e;
uint256 sub_0fc176be;
uint256 stor13;

function sub_0fc176be(?) {
    return sub_0fc176be
}

function totalSupply() {
    return totalSupply
}

function sub_1b1dc652(?) {
    return sub_1b1dc652
}

function sub_22d45a51(?) {
    return sub_22d45a51
}

function sub_2cb6d078(?) {
    return sub_2cb6d078
}

function devAddress() {
    return devAddress
}

function sub_3de07520(?) {
    return sub_3de07520
}

function sub_431c147a(?) {
    return sub_431c147a
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function taxPercent() {
    return taxPercent
}

function getOwner() {
    return owner
}

function sub_a4cb190e(?) {
    return sub_a4cb190e
}

function sub_af530ced(?) {
    return sub_af530ced
}

function sub_cae2c5c5(?) {
    return sub_cae2c5c5
}

function sub_cdbdc6c8(?) {
    return sub_cdbdc6c8
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ba08deee(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3de07520 = arg1
}

function sub_f7c6ec33(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_431c147a = arg1
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddress = arg1
}

function sub_240143b8(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) > 15:
        revert with 0, 'tax cannot be higher than 15%'
    taxPercent = uint8(arg1)
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor1[address(arg1)]) != 1:
        revert with 0, 'account is not excluded from fee'
    stor1[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'account is already excluded from fee'
    stor1[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_c8667238(?) {
    require calldata.size - 4 >= 192
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = uint8(arg1) or stor10 and -4278190336 or uint8(arg2) << 24 and -1095216725761 or uint8(arg3) << 8 or uint8(arg4) << 32 and -280375481794561 or uint8(arg5) << 16 or uint8(arg6) << 40
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if this.address == msg.sender:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 'NH{q', 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if this.address == arg1:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 'NH{q', 17
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 == msg.sender:
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 'NH{q', 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 == arg1:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 'NH{q', 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if 0x5b1199fd814a0fc6e6ddefc20ed467cb88b0d894 == msg.sender:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 'NH{q', 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if 0x5b1199fd814a0fc6e6ddefc20ed467cb88b0d894 == arg1:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 'NH{q', 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7 != msg.sender:
                                if stor7 != arg1:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor1[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 / 100 and taxPercent > -1 / arg2 / 100:
                                            revert with 'NH{q', 17
                                        if arg2 / 100 * taxPercent < arg2 / 100 * taxPercent / 10:
                                            revert with 'NH{q', 17
                                        if balanceOf[stor5] > !(arg2 / 100 * taxPercent / 10):
                                            revert with 'NH{q', 17
                                        balanceOf[stor5] += arg2 / 100 * taxPercent / 10
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                                        if balanceOf[address(msg.sender)] < (arg2 / 100 * taxPercent) - (arg2 / 100 * taxPercent / 10):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 100 * taxPercent) + (arg2 / 100 * taxPercent / 10)
                                        if totalSupply < (arg2 / 100 * taxPercent) - (arg2 / 100 * taxPercent / 10):
                                            revert with 'NH{q', 17
                                        totalSupply = totalSupply - (arg2 / 100 * taxPercent) + (arg2 / 100 * taxPercent / 10)
                                        emit Transfer(((arg2 / 100 * taxPercent) - (arg2 / 100 * taxPercent / 10)), msg.sender, 0);
                                        if arg2 < arg2 / 100 * taxPercent / 10:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 / 100 * taxPercent:
                                            revert with 'NH{q', 17
                                        mem[96] = 2
                                        mem[128] = this.address
                                        mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[196] = arg2 - (arg2 / 100 * taxPercent)
                                        mem[228] = 64
                                        mem[260] = 2
                                        idx = 0
                                        s = 292
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args arg2 - (arg2 / 100 * taxPercent), Array(len=2, data=mem[292 len 64])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + 192
                                        require return_data.size >= 32
                                        _196 = mem[192 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32
                                        require mem[192 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 <= test266151307()
                                        require mem[192 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 223 < return_data.size + 192
                                        _198 = mem[mem[192 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 192]
                                        if mem[mem[192 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 192] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 192]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 192]) + 193
                                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 192]
                                        require return_data.size >= _196 + (32 * _198) + 32
                                        mem[ceil32(return_data.size) + 224 len 32 * _198] = mem[_196 + 224 len 32 * _198]
                                        if 1 >= _198:
                                            revert with 'NH{q', 50
                                        if sub_0fc176be > !mem[ceil32(return_data.size) + 256]:
                                            revert with 'NH{q', 17
                                        sub_0fc176be += mem[ceil32(return_data.size) + 256]
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100 * taxPercent):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100 * taxPercent)
                                        if balanceOf[arg1] > !(arg2 - (arg2 / 100 * taxPercent)):
                                            revert with 'NH{q', 17
                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 100 * taxPercent)
                                        emit Transfer((arg2 - (arg2 / 100 * taxPercent)), msg.sender, arg1);
                            else:
                                mem[96] = 2
                                mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[160] = this.address
                                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[196] = arg2
                                mem[228] = 64
                                mem[260] = 2
                                idx = 0
                                s = 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _197 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                                require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
                                _199 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                                if mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                                require return_data.size >= _197 + (32 * _199) + 32
                                mem[ceil32(return_data.size) + 224 len 32 * _199] = mem[_197 + 224 len 32 * _199]
                                if 0 >= _199:
                                    revert with 'NH{q', 50
                                if sub_a4cb190e > !mem[ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 17
                                sub_a4cb190e += mem[ceil32(return_data.size) + 224]
                                if 0 >= _199:
                                    revert with 'NH{q', 50
                                if mem[ceil32(return_data.size) + 224] >= sub_431c147a:
                                    if stor13 == -1:
                                        revert with 'NH{q', 17
                                    stor13++
                                    mem[mem[64] + 32] = block.timestamp
                                    mem[mem[64] + 64] = address(msg.sender)
                                    mem[mem[64] + 84] = stor13
                                    _303 = mem[64]
                                    mem[mem[64]] = 84
                                    mem[64] = mem[64] + 116
                                    if sha3(mem[_303 + 32 len mem[_303]]) % 100 < sub_cdbdc6c8:
                                        if arg2 / 100 and sub_22d45a51 > -1 / arg2 / 100:
                                            revert with 'NH{q', 17
                                        if not arg1:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if totalSupply > !(arg2 / 100 * sub_22d45a51):
                                            revert with 'NH{q', 17
                                        totalSupply += arg2 / 100 * sub_22d45a51
                                        if balanceOf[address(arg1)] > !(arg2 / 100 * sub_22d45a51):
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2 / 100 * sub_22d45a51
                                        emit Transfer((arg2 / 100 * sub_22d45a51), 0, arg1);
                                    else:
                                        if sha3(mem[_303 + 32 len mem[_303]]) % 100 < sub_1b1dc652:
                                            if arg2 / 100 and sub_af530ced > -1 / arg2 / 100:
                                                revert with 'NH{q', 17
                                            if not arg1:
                                                revert with 0, 'ERC20: mint to the zero address'
                                            if totalSupply > !(arg2 / 100 * sub_af530ced):
                                                revert with 'NH{q', 17
                                            totalSupply += arg2 / 100 * sub_af530ced
                                            if balanceOf[address(arg1)] > !(arg2 / 100 * sub_af530ced):
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2 / 100 * sub_af530ced
                                            emit Transfer((arg2 / 100 * sub_af530ced), 0, arg1);
                                        else:
                                            if sha3(mem[_303 + 32 len mem[_303]]) % 100 < sub_2cb6d078:
                                                if arg2 / 100 and sub_cae2c5c5 > -1 / arg2 / 100:
                                                    revert with 'NH{q', 17
                                                if not arg1:
                                                    revert with 0, 'ERC20: mint to the zero address'
                                                if totalSupply > !(arg2 / 100 * sub_cae2c5c5):
                                                    revert with 'NH{q', 17
                                                totalSupply += arg2 / 100 * sub_cae2c5c5
                                                if balanceOf[address(arg1)] > !(arg2 / 100 * sub_cae2c5c5):
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2 / 100 * sub_cae2c5c5
                                                emit Transfer((arg2 / 100 * sub_cae2c5c5), 0, arg1);
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 'NH{q', 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if this.address == arg1:
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 'NH{q', 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if this.address == arg2:
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 'NH{q', 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 == arg1:
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 'NH{q', 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 == arg2:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 'NH{q', 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if 0x5b1199fd814a0fc6e6ddefc20ed467cb88b0d894 == arg1:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 'NH{q', 17
                        balanceOf[arg2] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if 0x5b1199fd814a0fc6e6ddefc20ed467cb88b0d894 == arg2:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 'NH{q', 17
                            balanceOf[arg2] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if allowance[address(arg1)][msg.sender] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            if stor7 != arg1:
                                if stor7 != arg2:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if allowance[address(arg1)][msg.sender] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                else:
                                    if stor1[address(arg1)]:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if allowance[address(arg1)][msg.sender] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                    else:
                                        if arg3 / 100 and taxPercent > -1 / arg3 / 100:
                                            revert with 'NH{q', 17
                                        if arg3 / 100 * taxPercent < arg3 / 100 * taxPercent / 10:
                                            revert with 'NH{q', 17
                                        if balanceOf[stor5] > !(arg3 / 100 * taxPercent / 10):
                                            revert with 'NH{q', 17
                                        balanceOf[stor5] += arg3 / 100 * taxPercent / 10
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                                        if balanceOf[address(arg1)] < (arg3 / 100 * taxPercent) - (arg3 / 100 * taxPercent / 10):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 / 100 * taxPercent) + (arg3 / 100 * taxPercent / 10)
                                        if totalSupply < (arg3 / 100 * taxPercent) - (arg3 / 100 * taxPercent / 10):
                                            revert with 'NH{q', 17
                                        totalSupply = totalSupply - (arg3 / 100 * taxPercent) + (arg3 / 100 * taxPercent / 10)
                                        emit Transfer(((arg3 / 100 * taxPercent) - (arg3 / 100 * taxPercent / 10)), arg1, 0);
                                        if arg3 < arg3 / 100 * taxPercent / 10:
                                            revert with 'NH{q', 17
                                        if arg3 < arg3 / 100 * taxPercent:
                                            revert with 'NH{q', 17
                                        mem[96] = 2
                                        mem[128] = this.address
                                        mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[196] = arg3 - (arg3 / 100 * taxPercent)
                                        mem[228] = 64
                                        mem[260] = 2
                                        idx = 0
                                        s = 292
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args arg3 - (arg3 / 100 * taxPercent), Array(len=2, data=mem[292 len 64])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + 192
                                        require return_data.size >= 32
                                        _364 = mem[192 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32
                                        require mem[192 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 <= test266151307()
                                        require mem[192 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 223 < return_data.size + 192
                                        _366 = mem[mem[192 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 192]
                                        if mem[mem[192 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 192] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 192]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 192]) + 193
                                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 192]
                                        require return_data.size >= _364 + (32 * _366) + 32
                                        mem[ceil32(return_data.size) + 224 len 32 * _366] = mem[_364 + 224 len 32 * _366]
                                        if 1 >= _366:
                                            revert with 'NH{q', 50
                                        if sub_0fc176be > !mem[ceil32(return_data.size) + 256]:
                                            revert with 'NH{q', 17
                                        sub_0fc176be += mem[ceil32(return_data.size) + 256]
                                        if balanceOf[address(arg1)] < arg3 - (arg3 / 100 * taxPercent):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * taxPercent)
                                        if balanceOf[arg2] > !(arg3 - (arg3 / 100 * taxPercent)):
                                            revert with 'NH{q', 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 / 100 * taxPercent)
                                        emit Transfer((arg3 - (arg3 / 100 * taxPercent)), arg1, arg2);
                                        if allowance[address(arg1)][msg.sender] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                            else:
                                mem[96] = 2
                                mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[160] = this.address
                                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[196] = arg3
                                mem[228] = 64
                                mem[260] = 2
                                idx = 0
                                s = 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _365 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
                                _367 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                                if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                                require return_data.size >= _365 + (32 * _367) + 32
                                mem[ceil32(return_data.size) + 224 len 32 * _367] = mem[_365 + 224 len 32 * _367]
                                if 0 >= _367:
                                    revert with 'NH{q', 50
                                if sub_a4cb190e > !mem[ceil32(return_data.size) + 224]:
                                    revert with 'NH{q', 17
                                sub_a4cb190e += mem[ceil32(return_data.size) + 224]
                                if 0 >= _367:
                                    revert with 'NH{q', 50
                                if mem[ceil32(return_data.size) + 224] >= sub_431c147a:
                                    if stor13 == -1:
                                        revert with 'NH{q', 17
                                    stor13++
                                    mem[mem[64] + 32] = block.timestamp
                                    mem[mem[64] + 64] = address(msg.sender)
                                    mem[mem[64] + 84] = stor13
                                    _543 = mem[64]
                                    mem[mem[64]] = 84
                                    mem[64] = mem[64] + 116
                                    if sha3(mem[_543 + 32 len mem[_543]]) % 100 < sub_cdbdc6c8:
                                        if arg3 / 100 and sub_22d45a51 > -1 / arg3 / 100:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if totalSupply > !(arg3 / 100 * sub_22d45a51):
                                            revert with 'NH{q', 17
                                        totalSupply += arg3 / 100 * sub_22d45a51
                                        if balanceOf[address(arg2)] > !(arg3 / 100 * sub_22d45a51):
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3 / 100 * sub_22d45a51
                                        emit Transfer((arg3 / 100 * sub_22d45a51), 0, arg2);
                                    else:
                                        if sha3(mem[_543 + 32 len mem[_543]]) % 100 < sub_1b1dc652:
                                            if arg3 / 100 and sub_af530ced > -1 / arg3 / 100:
                                                revert with 'NH{q', 17
                                            if not arg2:
                                                revert with 0, 'ERC20: mint to the zero address'
                                            if totalSupply > !(arg3 / 100 * sub_af530ced):
                                                revert with 'NH{q', 17
                                            totalSupply += arg3 / 100 * sub_af530ced
                                            if balanceOf[address(arg2)] > !(arg3 / 100 * sub_af530ced):
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3 / 100 * sub_af530ced
                                            emit Transfer((arg3 / 100 * sub_af530ced), 0, arg2);
                                        else:
                                            if sha3(mem[_543 + 32 len mem[_543]]) % 100 < sub_2cb6d078:
                                                if arg3 / 100 and sub_cae2c5c5 > -1 / arg3 / 100:
                                                    revert with 'NH{q', 17
                                                if not arg2:
                                                    revert with 0, 'ERC20: mint to the zero address'
                                                if totalSupply > !(arg3 / 100 * sub_cae2c5c5):
                                                    revert with 'NH{q', 17
                                                totalSupply += arg3 / 100 * sub_cae2c5c5
                                                if balanceOf[address(arg2)] > !(arg3 / 100 * sub_cae2c5c5):
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3 / 100 * sub_cae2c5c5
                                                emit Transfer((arg3 / 100 * sub_cae2c5c5), 0, arg2);
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 'NH{q', 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if allowance[address(arg1)][msg.sender] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xba08deee(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd0d41fe1(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xea2f0b37(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xd0d41fe1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        devAddress = address(arg1)
                    require unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)]
                if unknown_0xea2f0b37(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if bool(stor1[address(arg1)]) != 1:
                        revert with 0, 'account is not excluded from fee'
                    stor1[address(arg1)] = 0
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        require unknown_0xf7c6ec33(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_431c147a = arg1
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, address(arg1));
                        owner = address(arg1)
            else:
                if unknown_0xba08deee(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_3de07520 = arg1
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc8667238(?????):
                        if unknown_0xcae2c5c5(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_cae2c5c5
                        require unknown_0xcdbdc6c8(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_cdbdc6c8
                    require not msg.value
                    require calldata.size - 4 >= 192
                    require arg1 == uint8(arg1)
                    require arg2 == uint8(arg2)
                    require arg3 == uint8(arg3)
                    require arg4 == uint8(arg4)
                    require arg5 == uint8(arg5)
                    require arg6 == uint8(arg6)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor10 = uint8(arg1) or stor10 and -4278190336 or uint8(arg2) << 24 and -1095216725761 or uint8(arg3) << 8 or uint8(arg4) << 32 and -280375481794561 or uint8(arg5) << 16 or uint8(arg6) << 40
        if unknown_0xa457c2d7(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                emit OwnershipTransferred(owner, 0);
                owner = 0
            if unknown_0x7541f41c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return taxPercent
            if unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            require unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return 'BEEP', 0
        if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)] < arg2:
                revert with 0, 'ERC20: decreased allowance below zero'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
            emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
        else:
            if unknown_0xa4cb190e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_a4cb190e
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                require unknown_0xaf530ced(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_af530ced
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: transfer to the zero address'
            if this.address == msg.sender:
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > !arg2:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, address(arg1));
            else:
                if this.address == address(arg1):
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 == msg.sender:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, address(arg1));
                    else:
                        if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 == address(arg1):
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, address(arg1));
                        else:
                            if 0x5b1199fd814a0fc6e6ddefc20ed467cb88b0d894 == msg.sender:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > !arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if 0x5b1199fd814a0fc6e6ddefc20ed467cb88b0d894 == address(arg1):
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > !arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if stor7 != msg.sender:
                                        if stor7 != address(arg1):
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > !arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if stor1[address(msg.sender)]:
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > !arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if arg2 / 100 and taxPercent > -1 / arg2 / 100:
                                                    revert with 'NH{q', 17
                                                if arg2 / 100 * taxPercent < arg2 / 100 * taxPercent / 10:
                                                    revert with 'NH{q', 17
                                                if balanceOf[stor5] > !(arg2 / 100 * taxPercent / 10):
                                                    revert with 'NH{q', 17
                                                balanceOf[stor5] += arg2 / 100 * taxPercent / 10
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: burn from the zero address'
                                                if balanceOf[address(msg.sender)] < (arg2 / 100 * taxPercent) - (arg2 / 100 * taxPercent / 10):
                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 100 * taxPercent) + (arg2 / 100 * taxPercent / 10)
                                                if totalSupply < (arg2 / 100 * taxPercent) - (arg2 / 100 * taxPercent / 10):
                                                    revert with 'NH{q', 17
                                                totalSupply = totalSupply - (arg2 / 100 * taxPercent) + (arg2 / 100 * taxPercent / 10)
                                                emit Transfer(((arg2 / 100 * taxPercent) - (arg2 / 100 * taxPercent / 10)), msg.sender, 0);
                                                if arg2 < arg2 / 100 * taxPercent / 10:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 / 100 * taxPercent:
                                                    revert with 'NH{q', 17
                                                mem[128] = 2
                                                mem[160] = this.address
                                                mem[192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[228] = arg2 - (arg2 / 100 * taxPercent)
                                                mem[260] = 64
                                                mem[292] = 2
                                                idx = 0
                                                s = 324
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor6)
                                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                        gas gas_remaining wei
                                                       args arg2 - (arg2 / 100 * taxPercent), Array(len=2, data=mem[324 len 64])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = ceil32(return_data.size) + 224
                                                require return_data.size >= 32
                                                _687 = mem[224 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32
                                                require mem[224 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 <= test266151307()
                                                require mem[224 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 255 < return_data.size + 224
                                                _691 = mem[mem[224 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 224]
                                                if mem[mem[224 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 224] > test266151307():
                                                    revert with 'NH{q', 65
                                                if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 224]) + 1 < 0:
                                                    revert with 'NH{q', 65
                                                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 224]) + 225
                                                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg2 - (arg2 / 100 * taxPercent)) >> 32 + 224]
                                                require return_data.size >= _687 + (32 * _691) + 32
                                                mem[ceil32(return_data.size) + 256 len 32 * _691] = mem[_687 + 256 len 32 * _691]
                                                if 1 >= _691:
                                                    revert with 'NH{q', 50
                                                if sub_0fc176be > !mem[ceil32(return_data.size) + 288]:
                                                    revert with 'NH{q', 17
                                                sub_0fc176be += mem[ceil32(return_data.size) + 288]
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100 * taxPercent):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100 * taxPercent)
                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 / 100 * taxPercent)):
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * taxPercent)
                                                emit Transfer((arg2 - (arg2 / 100 * taxPercent)), msg.sender, address(arg1));
                                    else:
                                        mem[128] = 2
                                        mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[192] = this.address
                                        mem[224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[228] = arg2
                                        mem[260] = 64
                                        mem[292] = 2
                                        idx = 0
                                        s = 324
                                        t = 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor6)
                                        staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args arg2, Array(len=2, data=mem[324 len 64])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + 224
                                        require return_data.size >= 32
                                        _688 = mem[224 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require mem[224 len 4], Mask(224, 32, arg2) >> 32 + 255 < return_data.size + 224
                                        _692 = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                                        if mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
                                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                                        require return_data.size >= _688 + (32 * _692) + 32
                                        mem[ceil32(return_data.size) + 256 len 32 * _692] = mem[_688 + 256 len 32 * _692]
                                        if 0 >= _692:
                                            revert with 'NH{q', 50
                                        if sub_a4cb190e > !mem[ceil32(return_data.size) + 256]:
                                            revert with 'NH{q', 17
                                        sub_a4cb190e += mem[ceil32(return_data.size) + 256]
                                        if 0 >= _692:
                                            revert with 'NH{q', 50
                                        if mem[ceil32(return_data.size) + 256] >= sub_431c147a:
                                            if stor13 == -1:
                                                revert with 'NH{q', 17
                                            stor13++
                                            mem[mem[64] + 32] = block.timestamp
                                            mem[mem[64] + 64] = address(msg.sender)
                                            mem[mem[64] + 84] = stor13
                                            _974 = mem[64]
                                            mem[mem[64]] = 84
                                            mem[64] = mem[64] + 116
                                            if sha3(mem[_974 + 32 len mem[_974]]) % 100 < sub_cdbdc6c8:
                                                if arg2 / 100 and sub_22d45a51 > -1 / arg2 / 100:
                                                    revert with 'NH{q', 17
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: mint to the zero address'
                                                if totalSupply > !(arg2 / 100 * sub_22d45a51):
                                                    revert with 'NH{q', 17
                                                totalSupply += arg2 / 100 * sub_22d45a51
                                                if balanceOf[address(arg1)] > !(arg2 / 100 * sub_22d45a51):
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2 / 100 * sub_22d45a51
                                                emit Transfer((arg2 / 100 * sub_22d45a51), 0, address(arg1));
                                            else:
                                                if sha3(mem[_974 + 32 len mem[_974]]) % 100 < sub_1b1dc652:
                                                    if arg2 / 100 and sub_af530ced > -1 / arg2 / 100:
                                                        revert with 'NH{q', 17
                                                    if not address(arg1):
                                                        revert with 0, 'ERC20: mint to the zero address'
                                                    if totalSupply > !(arg2 / 100 * sub_af530ced):
                                                        revert with 'NH{q', 17
                                                    totalSupply += arg2 / 100 * sub_af530ced
                                                    if balanceOf[address(arg1)] > !(arg2 / 100 * sub_af530ced):
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2 / 100 * sub_af530ced
                                                    emit Transfer((arg2 / 100 * sub_af530ced), 0, address(arg1));
                                                else:
                                                    if sha3(mem[_974 + 32 len mem[_974]]) % 100 < sub_2cb6d078:
                                                        if arg2 / 100 and sub_cae2c5c5 > -1 / arg2 / 100:
                                                            revert with 'NH{q', 17
                                                        if not address(arg1):
                                                            revert with 0, 'ERC20: mint to the zero address'
                                                        if totalSupply > !(arg2 / 100 * sub_cae2c5c5):
                                                            revert with 'NH{q', 17
                                                        totalSupply += arg2 / 100 * sub_cae2c5c5
                                                        if balanceOf[address(arg1)] > !(arg2 / 100 * sub_cae2c5c5):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2 / 100 * sub_cae2c5c5
                                                        emit Transfer((arg2 / 100 * sub_cae2c5c5), 0, address(arg1));
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > !arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
    else:
        if unknown_0x2cb6d078(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x3de07520(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x437823ec(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x3de07520(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_3de07520
                    require unknown_0x431c147a(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_431c147a
                if uint32(call.func_hash) >> 224 != unknown_0x437823ec(?????):
                    if unknown_0x5342acb4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor1[address(arg1)])
                    require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return balanceOf[address(arg1)]
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if stor1[address(arg1)]:
                    revert with 0, 'account is already excluded from fee'
                stor1[address(arg1)] = 1
            if unknown_0x2cb6d078(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_2cb6d078
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 18
            if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                require unknown_0x3ad10ef6(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return devAddress
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)] > !arg2:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
            emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
        else:
            if unknown_0x1b1dc652(?????) > uint32(call.func_hash) >> 224:
                if name() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 'Beep', 0
                if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                    if unknown_0x0fc176be(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_0fc176be
                    require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return totalSupply
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(arg1)] = arg2
                emit Approval(arg2, msg.sender, address(arg1));
            else:
                if unknown_0x1b1dc652(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_1b1dc652
                if unknown_0x22d45a51(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_22d45a51
                if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                    require unknown_0x240143b8(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == uint8(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uint8(arg1) > 15:
                        revert with 0, 'tax cannot be higher than 15%'
                    taxPercent = uint8(arg1)
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if this.address == address(arg1):
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                else:
                    if this.address == address(arg2):
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 == address(arg1):
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, address(arg1), address(arg2));
                        else:
                            if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 == address(arg2):
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if 0x5b1199fd814a0fc6e6ddefc20ed467cb88b0d894 == address(arg1):
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if 0x5b1199fd814a0fc6e6ddefc20ed467cb88b0d894 == address(arg2):
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > !arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if stor7 != address(arg1):
                                            if stor7 != address(arg2):
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[address(arg2)] > !arg3:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if stor1[address(arg1)]:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > !arg3:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if arg3 / 100 and taxPercent > -1 / arg3 / 100:
                                                        revert with 'NH{q', 17
                                                    if arg3 / 100 * taxPercent < arg3 / 100 * taxPercent / 10:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[stor5] > !(arg3 / 100 * taxPercent / 10):
                                                        revert with 'NH{q', 17
                                                    balanceOf[stor5] += arg3 / 100 * taxPercent / 10
                                                    if not address(arg1):
                                                        revert with 0, 'ERC20: burn from the zero address'
                                                    if balanceOf[address(arg1)] < (arg3 / 100 * taxPercent) - (arg3 / 100 * taxPercent / 10):
                                                        revert with 0, 'ERC20: burn amount exceeds balance'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 / 100 * taxPercent) + (arg3 / 100 * taxPercent / 10)
                                                    if totalSupply < (arg3 / 100 * taxPercent) - (arg3 / 100 * taxPercent / 10):
                                                        revert with 'NH{q', 17
                                                    totalSupply = totalSupply - (arg3 / 100 * taxPercent) + (arg3 / 100 * taxPercent / 10)
                                                    emit Transfer(((arg3 / 100 * taxPercent) - (arg3 / 100 * taxPercent / 10)), address(arg1), 0);
                                                    if arg3 < arg3 / 100 * taxPercent / 10:
                                                        revert with 'NH{q', 17
                                                    if arg3 < arg3 / 100 * taxPercent:
                                                        revert with 'NH{q', 17
                                                    mem[128] = 2
                                                    mem[160] = this.address
                                                    mem[192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[228] = arg3 - (arg3 / 100 * taxPercent)
                                                    mem[260] = 64
                                                    mem[292] = 2
                                                    idx = 0
                                                    s = 324
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor6)
                                                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                            gas gas_remaining wei
                                                           args arg3 - (arg3 / 100 * taxPercent), Array(len=2, data=mem[324 len 64])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(return_data.size) + 224
                                                    require return_data.size >= 32
                                                    _685 = mem[224 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32
                                                    require mem[224 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 <= test266151307()
                                                    require mem[224 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 255 < return_data.size + 224
                                                    _689 = mem[mem[224 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 224]
                                                    if mem[mem[224 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 224] > test266151307():
                                                        revert with 'NH{q', 65
                                                    if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 224]) + 1 < 0:
                                                        revert with 'NH{q', 65
                                                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 224]) + 225
                                                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3 - (arg3 / 100 * taxPercent)) >> 32 + 224]
                                                    require return_data.size >= _685 + (32 * _689) + 32
                                                    mem[ceil32(return_data.size) + 256 len 32 * _689] = mem[_685 + 256 len 32 * _689]
                                                    if 1 >= _689:
                                                        revert with 'NH{q', 50
                                                    if sub_0fc176be > !mem[ceil32(return_data.size) + 288]:
                                                        revert with 'NH{q', 17
                                                    sub_0fc176be += mem[ceil32(return_data.size) + 288]
                                                    if balanceOf[address(arg1)] < arg3 - (arg3 / 100 * taxPercent):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * taxPercent)
                                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 / 100 * taxPercent)):
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * taxPercent)
                                                    emit Transfer((arg3 - (arg3 / 100 * taxPercent)), address(arg1), address(arg2));
                                        else:
                                            mem[128] = 2
                                            mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[192] = this.address
                                            mem[224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[228] = arg3
                                            mem[260] = 64
                                            mem[292] = 2
                                            idx = 0
                                            s = 324
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor6)
                                            staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args arg3, Array(len=2, data=mem[324 len 64])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(return_data.size) + 224
                                            require return_data.size >= 32
                                            _686 = mem[224 len 4], Mask(224, 32, arg3) >> 32
                                            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255 < return_data.size + 224
                                            _690 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                            if mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                                revert with 'NH{q', 65
                                            if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                            require return_data.size >= _686 + (32 * _690) + 32
                                            mem[ceil32(return_data.size) + 256 len 32 * _690] = mem[_686 + 256 len 32 * _690]
                                            if 0 >= _690:
                                                revert with 'NH{q', 50
                                            if sub_a4cb190e > !mem[ceil32(return_data.size) + 256]:
                                                revert with 'NH{q', 17
                                            sub_a4cb190e += mem[ceil32(return_data.size) + 256]
                                            if 0 >= _690:
                                                revert with 'NH{q', 50
                                            if mem[ceil32(return_data.size) + 256] >= sub_431c147a:
                                                if stor13 == -1:
                                                    revert with 'NH{q', 17
                                                stor13++
                                                mem[mem[64] + 32] = block.timestamp
                                                mem[mem[64] + 64] = address(msg.sender)
                                                mem[mem[64] + 84] = stor13
                                                _968 = mem[64]
                                                mem[mem[64]] = 84
                                                mem[64] = mem[64] + 116
                                                if sha3(mem[_968 + 32 len mem[_968]]) % 100 < sub_cdbdc6c8:
                                                    if arg3 / 100 and sub_22d45a51 > -1 / arg3 / 100:
                                                        revert with 'NH{q', 17
                                                    if not address(arg2):
                                                        revert with 0, 'ERC20: mint to the zero address'
                                                    if totalSupply > !(arg3 / 100 * sub_22d45a51):
                                                        revert with 'NH{q', 17
                                                    totalSupply += arg3 / 100 * sub_22d45a51
                                                    if balanceOf[address(arg2)] > !(arg3 / 100 * sub_22d45a51):
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3 / 100 * sub_22d45a51
                                                    emit Transfer((arg3 / 100 * sub_22d45a51), 0, address(arg2));
                                                else:
                                                    if sha3(mem[_968 + 32 len mem[_968]]) % 100 < sub_1b1dc652:
                                                        if arg3 / 100 and sub_af530ced > -1 / arg3 / 100:
                                                            revert with 'NH{q', 17
                                                        if not address(arg2):
                                                            revert with 0, 'ERC20: mint to the zero address'
                                                        if totalSupply > !(arg3 / 100 * sub_af530ced):
                                                            revert with 'NH{q', 17
                                                        totalSupply += arg3 / 100 * sub_af530ced
                                                        if balanceOf[address(arg2)] > !(arg3 / 100 * sub_af530ced):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg2)] += arg3 / 100 * sub_af530ced
                                                        emit Transfer((arg3 / 100 * sub_af530ced), 0, address(arg2));
                                                    else:
                                                        if sha3(mem[_968 + 32 len mem[_968]]) % 100 < sub_2cb6d078:
                                                            if arg3 / 100 and sub_cae2c5c5 > -1 / arg3 / 100:
                                                                revert with 'NH{q', 17
                                                            if not address(arg2):
                                                                revert with 0, 'ERC20: mint to the zero address'
                                                            if totalSupply > !(arg3 / 100 * sub_cae2c5c5):
                                                                revert with 'NH{q', 17
                                                            totalSupply += arg3 / 100 * sub_cae2c5c5
                                                            if balanceOf[address(arg2)] > !(arg3 / 100 * sub_cae2c5c5):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg2)] += arg3 / 100 * sub_cae2c5c5
                                                            emit Transfer((arg3 / 100 * sub_cae2c5c5), 0, address(arg2));
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > !arg3:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not address(arg1):
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}



}
