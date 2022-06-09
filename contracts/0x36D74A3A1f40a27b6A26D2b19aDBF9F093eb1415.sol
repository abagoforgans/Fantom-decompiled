contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;
uint8 stor4; offset 8
uint256 stor4; offset 8
uint256 stor5;
uint256 stor6;
address stor7;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_c7126596(?) {
    if 500 < stor3:
        revert with 0, 17
    return (-stor3 + 500)
}

function nextPrice() {
    if stor6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    return (10^18 * stor6)
}

function changeOwner2(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor7
    stor7 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function setMintable(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor4.field_0) = uint8(arg1)
}

function sub_fa58565a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor4.field_8) = Mask(248, 0, bool(arg1))
}

function sub_4cd68e33(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) / 2 wei
         gas gas_remaining wei
    call stor7 with:
       value eth.balance(this.address) / 2 wei
         gas gas_remaining wei
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

function buyMint() payable {
    if not uint8(stor4.field_0):
        revert with 0, 'Not mintable...'
    if not uint8(stor4.field_8):
        mem[100] = msg.sender
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Not allowed to buy...'
        if stor3 >= 500:
            revert with 0, 'All citadels sold out...'
        if stor6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if msg.value < 10^18 * stor6:
            revert with 0, 'You didn't pay enough...'
        if stor3 == -1:
            revert with 0, 17
        stor3++
        if stor3 > !stor5:
            revert with 0, 17
        if not stor3 + stor5:
            if stor3 > !stor5:
                revert with 0, 17
            require ext_code.size(stor1)
            call stor1.mint(address arg1, string arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, 96, stor3 + stor5, 6, Mask(48, 32, 0, 199354445678, 0) >> 32, 0
        else:
            s = 0
            idx = stor3 + stor5
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(return_data.size) + 96] = s
            if s:
                mem[ceil32(return_data.size) + 128 len s] = call.data[calldata.size len s]
            t = s
            idx = stor3 + stor5
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[t + ceil32(return_data.size) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(return_data.size) + ceil32(s) + 160 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            mem[ceil32(return_data.size) + ceil32(s) + mem[ceil32(return_data.size) + 96] + 160] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if stor3 > !stor5:
                revert with 0, 17
            mem[ceil32(return_data.size) + ceil32(s) + mem[ceil32(return_data.size) + 96] + 297 len floor32(mem[ceil32(return_data.size) + 96] + 36)] = mem[ceil32(return_data.size) + ceil32(s) + 160 len mem[ceil32(return_data.size) + 96] + 5], 0, Mask(8 * floor32(mem[ceil32(return_data.size) + 96] + 36) + -mem[ceil32(return_data.size) + 96] - 9, -(8 * floor32(mem[ceil32(return_data.size) + 96] + 36) + -mem[ceil32(return_data.size) + 96] - 9) + 256, msg.sender) >> -(8 * floor32(mem[ceil32(return_data.size) + 96] + 36) + -mem[ceil32(return_data.size) + 96] - 9) + 256
            if floor32(mem[ceil32(return_data.size) + 96] + 36) <= mem[ceil32(return_data.size) + 96] + 5:
                require ext_code.size(stor1)
                call stor1.mint(address arg1, string arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, 96, stor3 + stor5, mem[ceil32(return_data.size) + 96] + 5, mem[ceil32(return_data.size) + ceil32(s) + 160 len mem[ceil32(return_data.size) + 96] + 5], 0, Mask(8 * floor32(mem[ceil32(return_data.size) + 96] + 36) + -mem[ceil32(return_data.size) + 96] - 9, -(8 * floor32(mem[ceil32(return_data.size) + 96] + 36) + -mem[ceil32(return_data.size) + 96] - 9) + 256, msg.sender) >> -(8 * floor32(mem[ceil32(return_data.size) + 96] + 36) + -mem[ceil32(return_data.size) + 96] - 9) + 256
            else:
                mem[ceil32(return_data.size) + ceil32(s) + (2 * mem[ceil32(return_data.size) + 96]) + 302] = 0
                require ext_code.size(stor1)
                call stor1.mint(address arg1, string arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=mem[ceil32(return_data.size) + 96] + 5, data=Mask(8 * mem[ceil32(return_data.size) + 96] + 5, -(8 * mem[ceil32(return_data.size) + 96] + 5) + 256, mem[ceil32(return_data.size) + ceil32(s) + 160 len mem[ceil32(return_data.size) + 96] + 5], 0, Mask(8 * floor32(mem[ceil32(return_data.size) + 96] + 36) + -mem[ceil32(return_data.size) + 96] - 9, -(8 * floor32(mem[ceil32(return_data.size) + 96] + 36) + -mem[ceil32(return_data.size) + 96] - 9) + 256, msg.sender) >> -(8 * floor32(mem[ceil32(return_data.size) + 96] + 36) + -mem[ceil32(return_data.size) + 96] - 9) + 256) << (8 * mem[ceil32(return_data.size) + 96] + 5) - 256, mem[ceil32(return_data.size) + ceil32(s) + (2 * mem[ceil32(return_data.size) + 96]) + 302 len floor32(mem[ceil32(return_data.size) + 96] + 36) + -mem[ceil32(return_data.size) + 96] - 5]), stor3 + stor5
    else:
        if stor3 >= 500:
            revert with 0, 'All citadels sold out...'
        if stor6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if msg.value < 10^18 * stor6:
            revert with 0, 'You didn't pay enough...'
        if stor3 == -1:
            revert with 0, 17
        stor3++
        if stor3 > !stor5:
            revert with 0, 17
        if not stor3 + stor5:
            if stor3 > !stor5:
                revert with 0, 17
            require ext_code.size(stor1)
            call stor1.mint(address arg1, string arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, 96, stor3 + stor5, 6, Mask(48, 32, 0, 199354445678, 0) >> 32, 0
        else:
            s = 0
            idx = stor3 + stor5
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[96] = s
            mem[64] = ceil32(s) + 128
            if not s:
                t = s
                idx = stor3 + stor5
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[96]:
                        revert with 0, 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _177 = mem[64]
                _181 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _277 = mem[64]
                    mem[mem[64]] = _177 + _181 + -mem[64] + 5
                    mem[64] = _177 + _181 + 37
                    if stor3 > !stor5:
                        revert with 0, 17
                    mem[_177 + _181 + 37] = 0xba7aef4300000000000000000000000000000000000000000000000000000000
                    mem[_177 + _181 + 41] = msg.sender
                    mem[_177 + _181 + 73] = 96
                    _289 = mem[_277]
                    mem[_177 + _181 + 137] = mem[_277]
                    mem[_177 + _181 + 169 len ceil32(_289)] = mem[_277 + 32 len ceil32(_289)]
                    if ceil32(_289) > _289:
                        mem[_177 + _181 + _289 + 169] = 0
                    require ext_code.size(stor1)
                    call stor1.mint(address arg1, string arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, 96, stor3 + stor5, mem[_177 + _181 + 137 len ceil32(_289) + 32]
                else:
                    _281 = mem[64]
                    mem[mem[64]] = _177 + _181 + -mem[64] + 5
                    mem[64] = _177 + _181 + 37
                    if stor3 > !stor5:
                        revert with 0, 17
                    mem[_177 + _181 + 37] = 0xba7aef4300000000000000000000000000000000000000000000000000000000
                    mem[_177 + _181 + 41] = msg.sender
                    mem[_177 + _181 + 73] = 96
                    _297 = mem[_281]
                    mem[_177 + _181 + 137] = mem[_281]
                    mem[_177 + _181 + 169 len ceil32(_297)] = mem[_281 + 32 len ceil32(_297)]
                    if ceil32(_297) > _297:
                        mem[_177 + _181 + _297 + 169] = 0
                    require ext_code.size(stor1)
                    call stor1.mint(address arg1, string arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, 96, stor3 + stor5, mem[_177 + _181 + 137 len ceil32(_297) + 32]
            else:
                mem[128 len s] = call.data[calldata.size len s]
                t = s
                idx = stor3 + stor5
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[96]:
                        revert with 0, 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _178 = mem[64]
                _182 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _278 = mem[64]
                    mem[mem[64]] = _178 + _182 + -mem[64] + 5
                    mem[64] = _178 + _182 + 37
                    if stor3 > !stor5:
                        revert with 0, 17
                    mem[_178 + _182 + 37] = 0xba7aef4300000000000000000000000000000000000000000000000000000000
                    mem[_178 + _182 + 41] = msg.sender
                    mem[_178 + _182 + 73] = 96
                    _291 = mem[_278]
                    mem[_178 + _182 + 137] = mem[_278]
                    mem[_178 + _182 + 169 len ceil32(_291)] = mem[_278 + 32 len ceil32(_291)]
                    if ceil32(_291) > _291:
                        mem[_178 + _182 + _291 + 169] = 0
                    require ext_code.size(stor1)
                    call stor1.mint(address arg1, string arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, 96, stor3 + stor5, mem[_178 + _182 + 137 len ceil32(_291) + 32]
                else:
                    _282 = mem[64]
                    mem[mem[64]] = _178 + _182 + -mem[64] + 5
                    mem[64] = _178 + _182 + 37
                    if stor3 > !stor5:
                        revert with 0, 17
                    mem[_178 + _182 + 37] = 0xba7aef4300000000000000000000000000000000000000000000000000000000
                    mem[_178 + _182 + 41] = msg.sender
                    mem[_178 + _182 + 73] = 96
                    _298 = mem[_282]
                    mem[_178 + _182 + 137] = mem[_282]
                    mem[_178 + _182 + 169 len ceil32(_298)] = mem[_282 + 32 len ceil32(_298)]
                    if ceil32(_298) > _298:
                        mem[_178 + _182 + _298 + 169] = 0
                    require ext_code.size(stor1)
                    call stor1.mint(address arg1, string arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, 96, stor3 + stor5, mem[_178 + _182 + 137 len ceil32(_298) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor3 > !stor5:
        revert with 0, 17
    emit 0x32a1690e: stor3 + stor5, msg.sender
}



}
