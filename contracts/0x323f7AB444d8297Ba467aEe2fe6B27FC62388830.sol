contract main {




// =====================  Runtime code  =====================


#
#  - tokensAddresses(address arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#
address owner;
address wethAddress;
address uniqueAddressesHelperAddress;
address stor3;

function wethAddress() payable {
    return wethAddress
}

function uniqueAddressesHelperAddress() payable {
    return uniqueAddressesHelperAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function updateSlot(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    stor[arg1] = arg2
}

function pairsLength(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function pagesLength(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not arg2:
        revert with 'NH{q', 18
    if ext_call.return_data[0] / arg2 > -2:
        revert with 'NH{q', 17
    return ((ext_call.return_data[0] / arg2) + 1)
}

function pagesLength(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if ext_call.return_data[0] - arg3 / arg2 > -2:
        revert with 'NH{q', 17
    return ((ext_call.return_data[0] - arg3 / arg2) + 1)
}

function pairsAddresses(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 and arg2 > -1 / arg3:
        revert with 'NH{q', 17
    if arg3 * arg2 > -1:
        revert with 'NH{q', 17
    if arg3 * arg2 > -arg2 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if (arg3 * arg2) + arg2 <= ext_call.return_data[0] - 1:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var127003 > (-1 * arg3 * arg2) - 1:
                revert with 'NH{q', 17
            if var131001 <= (arg3 * arg2) + arg2:
                if var143003 > (-1 * arg3 * arg2) - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var131003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var131003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var131003) + 225 > test266151307() or floor32(var131003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var131003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var131003
                require 32 * var131003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var131003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var131003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var131003) + 257] = var131003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var131003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var131003) + (32 * var131003) + -mem[64] + 289
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var128003 > (-1 * arg3 * arg2) - 1:
                revert with 'NH{q', 17
            if var132001 <= (arg3 * arg2) + arg2:
                if var144003 > (-1 * arg3 * arg2) - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var132003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var132003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225 > test266151307() or floor32(var132003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var132003
                require 32 * var132003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var132003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = var132003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var132003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * var132003) + -mem[64] + 289
    else:
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var135003 > (-1 * arg3 * arg2) - 1:
                revert with 'NH{q', 17
            if var139001 <= ext_call.return_data[0] - 1:
                if var151003 > (-1 * arg3 * arg2) - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var139003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var139003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var139003) + 225 > test266151307() or floor32(var139003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var139003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var139003
                require 32 * var139003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var139003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var139003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var139003) + 257] = var139003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var139003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var139003) + (32 * var139003) + -mem[64] + 289
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var136003 > (-1 * arg3 * arg2) - 1:
                revert with 'NH{q', 17
            if var140001 <= ext_call.return_data[0] - 1:
                if var152003 > (-1 * arg3 * arg2) - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var140003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var140003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225 > test266151307() or floor32(var140003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var140003
                require 32 * var140003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var140003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = var140003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var140003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * var140003) + -mem[64] + 289
}

function pairsAddresses(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 and arg2 > -1 / arg3:
        revert with 'NH{q', 17
    if arg3 * arg2 > -arg4 - 1:
        revert with 'NH{q', 17
    if (arg3 * arg2) + arg4 > -arg2 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if (arg3 * arg2) + arg4 + arg2 <= ext_call.return_data[0] - 1:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var133003 > (-1 * arg3 * arg2) + -arg4 - 1:
                revert with 'NH{q', 17
            if var137001 <= (arg3 * arg2) + arg4 + arg2:
                if var149003 > (-1 * arg3 * arg2) + -arg4 - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var137003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var137003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var137003) + 225 > test266151307() or floor32(var137003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var137003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var137003
                require 32 * var137003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var137003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var137003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var137003) + 257] = var137003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var137003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var137003) + (32 * var137003) + -mem[64] + 289
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var134003 > (-1 * arg3 * arg2) + -arg4 - 1:
                revert with 'NH{q', 17
            if var138001 <= (arg3 * arg2) + arg4 + arg2:
                if var150003 > (-1 * arg3 * arg2) + -arg4 - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var138003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var138003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var138003) + 225 > test266151307() or floor32(var138003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var138003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var138003
                require 32 * var138003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var138003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var138003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var138003) + 257] = var138003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var138003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var138003) + (32 * var138003) + -mem[64] + 289
    else:
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var141003 > (-1 * arg3 * arg2) + -arg4 - 1:
                revert with 'NH{q', 17
            if var145001 <= ext_call.return_data[0] - 1:
                if var157003 > (-1 * arg3 * arg2) + -arg4 - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var145003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var145003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var145003) + 225 > test266151307() or floor32(var145003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var145003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var145003
                require 32 * var145003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var145003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var145003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var145003) + 257] = var145003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var145003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var145003) + (32 * var145003) + -mem[64] + 289
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var142003 > (-1 * arg3 * arg2) + -arg4 - 1:
                revert with 'NH{q', 17
            if var146001 <= ext_call.return_data[0] - 1:
                if var158003 > (-1 * arg3 * arg2) + -arg4 - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var146003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var146003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var146003) + 225 > test266151307() or floor32(var146003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var146003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var146003
                require 32 * var146003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var146003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var146003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var146003) + 257] = var146003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var146003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var146003) + (32 * var146003) + -mem[64] + 289
}

function pairsAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if False and ext_call.return_data[0] > 0:
        revert with 'NH{q', 17
    if 0 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] <= ext_call.return_data[0] - 1:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var127003 > -1:
                revert with 'NH{q', 17
            if var131001 <= ext_call.return_data[0]:
                if var143003 > -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var131003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var131003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var131003) + 225 > test266151307() or floor32(var131003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var131003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var131003
                require 32 * var131003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var131003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var131003) + 225] = 32
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var131003) + 257] = var131003
                s = 0
                t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var131003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var131003) + (32 * var131003) + -mem[64] + 289
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var128003 > -1:
                revert with 'NH{q', 17
            if var132001 <= ext_call.return_data[0]:
                if var144003 > -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var132003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var132003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225 > test266151307() or floor32(var132003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var132003
                require 32 * var132003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var132003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225] = 32
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = var132003
                s = 0
                t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var132003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * var132003) + -mem[64] + 289
    else:
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var135003 > -1:
                revert with 'NH{q', 17
            if var139001 <= ext_call.return_data[0] - 1:
                if var151003 > -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var139003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var139003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var139003) + 225 > test266151307() or floor32(var139003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var139003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var139003
                require 32 * var139003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var139003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var139003) + 225] = 32
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var139003) + 257] = var139003
                s = 0
                t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var139003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var139003) + (32 * var139003) + -mem[64] + 289
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var136003 > -1:
                revert with 'NH{q', 17
            if var140001 <= ext_call.return_data[0] - 1:
                if var152003 > -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var140003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var140003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225 > test266151307() or floor32(var140003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var140003
                require 32 * var140003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var140003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225] = 32
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = var140003
                s = 0
                t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var140003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * var140003) + -mem[64] + 289
}

function tokensAddresses(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 and arg2 > -1 / arg3:
        revert with 'NH{q', 17
    if arg3 * arg2 > -1:
        revert with 'NH{q', 17
    if arg3 * arg2 > -arg2 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if (arg3 * arg2) + arg2 <= ext_call.return_data[0] - 1:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var128003 > (-1 * arg3 * arg2) - 1:
                revert with 'NH{q', 17
            if var132001 <= (arg3 * arg2) + arg2:
                if var144003 > (-1 * arg3 * arg2) - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var132003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var132003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225 > test266151307() or floor32(var132003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var132003
                require 32 * var132003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var132003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var132003 and 2 > -1 / var132003:
                    revert with 'NH{q', 17
                if 2 * var132003 > -2:
                    revert with 'NH{q', 17
                if (2 * var132003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225] = (2 * var132003) + 1
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 257
                if not (2 * var132003) + 1:
                    if not var132003:
                        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 289] = 32
                        idx = 0
                        s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 289
                        t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 353
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return ''
                    if 0 >= (2 * var132003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var132003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _5362 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5395 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5414 = mem[_5395]
                        require mem[_5395] == mem[_5395 + 12 len 20]
                        require ext_code.size(address(_5362))
                        staticcall address(_5362).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5483 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5498 = mem[_5483]
                        require mem[_5483] == mem[_5483 + 12 len 20]
                        if address(_5414) == wethAddress:
                            if mem[_5483 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = mem[_5483 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_5414)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_5498) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_5498)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _5338 = mem[64]
                    mem[mem[64] + 32] = 32
                    _5394 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257
                    u = mem[64] + 96
                    while idx < _5394:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _6034 = mem[64]
                    mem[mem[64]] = _5338 + (32 * _5394) + -mem[64] + 64
                    mem[64] = _5338 + (32 * _5394) + 96
                    mem[_6034 + 64] = t
                    _6035 = mem[_6034]
                    require mem[_6034] >= 32
                    _6054 = mem[_6034 + 32]
                    require mem[_6034 + 32] <= test266151307()
                    require _6034 + mem[_6034 + 32] + 63 < _6034 + mem[_6034] + 32
                    _6062 = mem[_6034 + mem[_6034 + 32] + 32]
                    if mem[_6034 + mem[_6034 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _5338 + (32 * _5394) + floor32(mem[_6034 + mem[_6034 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6034 + mem[_6034 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _5338 + (32 * _5394) + floor32(mem[_6034 + mem[_6034 + 32] + 32]) + 97
                    mem[_5338 + (32 * _5394) + 96] = _6062
                    require _6054 + (32 * _6062) + 64 <= _6035 + 32
                    idx = 0
                    s = _6034 + _6054 + 64
                    t = _5338 + (32 * _5394) + 128
                    while idx < _6062:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _6062
                    idx = 0
                    s = _5338 + (32 * _5394) + 128
                    t = mem[64] + 68
                    while idx < _6062:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.uniqueAddresses(address[] rg1) with:
                            gas gas_remaining wei
                           args Array(len=_6062, data=mem[mem[64] + 68 len 32 * _6062])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7102 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7110 = mem[_7102]
                    require mem[_7102] <= test266151307()
                    require _7102 + mem[_7102] + 31 < _7102 + return_data.size
                    _7122 = mem[_7102 + mem[_7102]]
                    if mem[_7102 + mem[_7102]] > test266151307():
                        revert with 'NH{q', 65
                    if _7102 + ceil32(return_data.size) + floor32(mem[_7102 + mem[_7102]]) + 1 > test266151307() or floor32(mem[_7102 + mem[_7102]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _7102 + ceil32(return_data.size) + floor32(mem[_7102 + mem[_7102]]) + 1
                    mem[_7102 + ceil32(return_data.size)] = _7122
                    require _7110 + (32 * _7122) + 32 <= return_data.size
                    idx = 0
                    s = _7102 + _7110 + 32
                    t = _7102 + ceil32(return_data.size) + 32
                    while idx < _7122:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _7574 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _7122
                    idx = 0
                    s = _7102 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _7122:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _7574 + (32 * _7122) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257 len 32 * (2 * var132003) + 1] = call.data[calldata.size len 32 * (2 * var132003) + 1]
                if not var132003:
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 289] = 32
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 289
                    t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 353
                    while idx < 0:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return ''
                if 0 >= (2 * var132003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var132003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _5365 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5397 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5415 = mem[_5397]
                    require mem[_5397] == mem[_5397 + 12 len 20]
                    require ext_code.size(address(_5365))
                    staticcall address(_5365).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5485 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5499 = mem[_5485]
                    require mem[_5485] == mem[_5485 + 12 len 20]
                    if address(_5415) == wethAddress:
                        if mem[_5485 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = mem[_5485 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_5415)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_5499) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_5499)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _5341 = mem[64]
                mem[mem[64] + 32] = 32
                _5396 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257
                u = mem[64] + 96
                while idx < _5396:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _6036 = mem[64]
                mem[mem[64]] = _5341 + (32 * _5396) + -mem[64] + 64
                mem[64] = _5341 + (32 * _5396) + 96
                mem[_6036 + 64] = t
                _6037 = mem[_6036]
                require mem[_6036] >= 32
                _6055 = mem[_6036 + 32]
                require mem[_6036 + 32] <= test266151307()
                require _6036 + mem[_6036 + 32] + 63 < _6036 + mem[_6036] + 32
                _6063 = mem[_6036 + mem[_6036 + 32] + 32]
                if mem[_6036 + mem[_6036 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _5341 + (32 * _5396) + floor32(mem[_6036 + mem[_6036 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6036 + mem[_6036 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _5341 + (32 * _5396) + floor32(mem[_6036 + mem[_6036 + 32] + 32]) + 97
                mem[_5341 + (32 * _5396) + 96] = _6063
                require _6055 + (32 * _6063) + 64 <= _6037 + 32
                idx = 0
                s = _6036 + _6055 + 64
                t = _5341 + (32 * _5396) + 128
                while idx < _6063:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6591 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _6063
                idx = 0
                s = _5341 + (32 * _5396) + 128
                t = mem[64] + 68
                while idx < _6063:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _6591 + (32 * _6063) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7103 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7111 = mem[_7103]
                require mem[_7103] <= test266151307()
                require _7103 + mem[_7103] + 31 < _7103 + return_data.size
                _7123 = mem[_7103 + mem[_7103]]
                if mem[_7103 + mem[_7103]] > test266151307():
                    revert with 'NH{q', 65
                if _7103 + ceil32(return_data.size) + floor32(mem[_7103 + mem[_7103]]) + 1 > test266151307() or floor32(mem[_7103 + mem[_7103]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _7103 + ceil32(return_data.size) + floor32(mem[_7103 + mem[_7103]]) + 1
                mem[_7103 + ceil32(return_data.size)] = _7123
                require _7111 + (32 * _7123) + 32 <= return_data.size
                idx = 0
                s = _7103 + _7111 + 32
                t = _7103 + ceil32(return_data.size) + 32
                while idx < _7123:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7575 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _7123
                idx = 0
                s = _7103 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _7123:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _7575 + (32 * _7123) + -mem[64] + 64
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var129003 > (-1 * arg3 * arg2) - 1:
                revert with 'NH{q', 17
            if var133001 <= (arg3 * arg2) + arg2:
                if var145003 > (-1 * arg3 * arg2) - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var133003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var133003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225 > test266151307() or floor32(var133003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var133003
                require 32 * var133003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var133003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var133003 and 2 > -1 / var133003:
                    revert with 'NH{q', 17
                if 2 * var133003 > -2:
                    revert with 'NH{q', 17
                if (2 * var133003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225] = (2 * var133003) + 1
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 257
                if not (2 * var133003) + 1:
                    if not var133003:
                        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 289] = 32
                        idx = 0
                        s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 289
                        t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 353
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return ''
                    if 0 >= (2 * var133003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var133003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _5368 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5416 = mem[_5399]
                        require mem[_5399] == mem[_5399 + 12 len 20]
                        require ext_code.size(address(_5368))
                        staticcall address(_5368).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5487 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5500 = mem[_5487]
                        require mem[_5487] == mem[_5487 + 12 len 20]
                        if address(_5416) == wethAddress:
                            if mem[_5487 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = mem[_5487 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_5416)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_5500) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_5500)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _5344 = mem[64]
                    mem[mem[64] + 32] = 32
                    _5398 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257
                    u = mem[64] + 96
                    while idx < _5398:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _6038 = mem[64]
                    mem[mem[64]] = _5344 + (32 * _5398) + -mem[64] + 64
                    mem[64] = _5344 + (32 * _5398) + 96
                    mem[_6038 + 64] = t
                    _6039 = mem[_6038]
                    require mem[_6038] >= 32
                    _6056 = mem[_6038 + 32]
                    require mem[_6038 + 32] <= test266151307()
                    require _6038 + mem[_6038 + 32] + 63 < _6038 + mem[_6038] + 32
                    _6064 = mem[_6038 + mem[_6038 + 32] + 32]
                    if mem[_6038 + mem[_6038 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _5344 + (32 * _5398) + floor32(mem[_6038 + mem[_6038 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6038 + mem[_6038 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _5344 + (32 * _5398) + floor32(mem[_6038 + mem[_6038 + 32] + 32]) + 97
                    mem[_5344 + (32 * _5398) + 96] = _6064
                    require _6056 + (32 * _6064) + 64 <= _6039 + 32
                    idx = 0
                    s = _6038 + _6056 + 64
                    t = _5344 + (32 * _5398) + 128
                    while idx < _6064:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6592 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _6064
                    idx = 0
                    s = _5344 + (32 * _5398) + 128
                    t = mem[64] + 68
                    while idx < _6064:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _6592 + (32 * _6064) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7104 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7112 = mem[_7104]
                    require mem[_7104] <= test266151307()
                    require _7104 + mem[_7104] + 31 < _7104 + return_data.size
                    _7125 = mem[_7104 + mem[_7104]]
                    if mem[_7104 + mem[_7104]] > test266151307():
                        revert with 'NH{q', 65
                    if _7104 + ceil32(return_data.size) + floor32(mem[_7104 + mem[_7104]]) + 1 > test266151307() or floor32(mem[_7104 + mem[_7104]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _7104 + ceil32(return_data.size) + floor32(mem[_7104 + mem[_7104]]) + 1
                    mem[_7104 + ceil32(return_data.size)] = _7125
                    require _7112 + (32 * _7125) + 32 <= return_data.size
                    idx = 0
                    s = _7104 + _7112 + 32
                    t = _7104 + ceil32(return_data.size) + 32
                    while idx < _7125:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _7577 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _7125
                    idx = 0
                    s = _7104 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _7125:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _7577 + (32 * _7125) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257 len 32 * (2 * var133003) + 1] = call.data[calldata.size len 32 * (2 * var133003) + 1]
                if not var133003:
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 289] = 32
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 289
                    t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 353
                    while idx < 0:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return ''
                if 0 >= (2 * var133003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var133003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _5371 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5417 = mem[_5401]
                    require mem[_5401] == mem[_5401 + 12 len 20]
                    require ext_code.size(address(_5371))
                    staticcall address(_5371).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5489 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5501 = mem[_5489]
                    require mem[_5489] == mem[_5489 + 12 len 20]
                    if address(_5417) == wethAddress:
                        if mem[_5489 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = mem[_5489 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_5417)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_5501) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_5501)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _5347 = mem[64]
                mem[mem[64] + 32] = 32
                _5400 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257
                u = mem[64] + 96
                while idx < _5400:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _6040 = mem[64]
                mem[mem[64]] = _5347 + (32 * _5400) + -mem[64] + 64
                mem[64] = _5347 + (32 * _5400) + 96
                mem[_6040 + 64] = t
                _6041 = mem[_6040]
                require mem[_6040] >= 32
                _6057 = mem[_6040 + 32]
                require mem[_6040 + 32] <= test266151307()
                require _6040 + mem[_6040 + 32] + 63 < _6040 + mem[_6040] + 32
                _6065 = mem[_6040 + mem[_6040 + 32] + 32]
                if mem[_6040 + mem[_6040 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _5347 + (32 * _5400) + floor32(mem[_6040 + mem[_6040 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6040 + mem[_6040 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _5347 + (32 * _5400) + floor32(mem[_6040 + mem[_6040 + 32] + 32]) + 97
                mem[_5347 + (32 * _5400) + 96] = _6065
                require _6057 + (32 * _6065) + 64 <= _6041 + 32
                idx = 0
                s = _6040 + _6057 + 64
                t = _5347 + (32 * _5400) + 128
                while idx < _6065:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6593 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _6065
                idx = 0
                s = _5347 + (32 * _5400) + 128
                t = mem[64] + 68
                while idx < _6065:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _6593 + (32 * _6065) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7105 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7113 = mem[_7105]
                require mem[_7105] <= test266151307()
                require _7105 + mem[_7105] + 31 < _7105 + return_data.size
                _7126 = mem[_7105 + mem[_7105]]
                if mem[_7105 + mem[_7105]] > test266151307():
                    revert with 'NH{q', 65
                if _7105 + ceil32(return_data.size) + floor32(mem[_7105 + mem[_7105]]) + 1 > test266151307() or floor32(mem[_7105 + mem[_7105]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _7105 + ceil32(return_data.size) + floor32(mem[_7105 + mem[_7105]]) + 1
                mem[_7105 + ceil32(return_data.size)] = _7126
                require _7113 + (32 * _7126) + 32 <= return_data.size
                idx = 0
                s = _7105 + _7113 + 32
                t = _7105 + ceil32(return_data.size) + 32
                while idx < _7126:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7578 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _7126
                idx = 0
                s = _7105 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _7126:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _7578 + (32 * _7126) + -mem[64] + 64
    else:
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var136003 > (-1 * arg3 * arg2) - 1:
                revert with 'NH{q', 17
            if var140001 <= ext_call.return_data[0] - 1:
                if var152003 > (-1 * arg3 * arg2) - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var140003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var140003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225 > test266151307() or floor32(var140003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var140003
                require 32 * var140003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var140003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var140003 and 2 > -1 / var140003:
                    revert with 'NH{q', 17
                if 2 * var140003 > -2:
                    revert with 'NH{q', 17
                if (2 * var140003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225] = (2 * var140003) + 1
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 257
                if not (2 * var140003) + 1:
                    if not var140003:
                        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 289] = 32
                        idx = 0
                        s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 289
                        t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 353
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return ''
                    if 0 >= (2 * var140003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var140003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _5374 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5403 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5418 = mem[_5403]
                        require mem[_5403] == mem[_5403 + 12 len 20]
                        require ext_code.size(address(_5374))
                        staticcall address(_5374).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5491 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5502 = mem[_5491]
                        require mem[_5491] == mem[_5491 + 12 len 20]
                        if address(_5418) == wethAddress:
                            if mem[_5491 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = mem[_5491 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_5418)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_5502) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_5502)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _5350 = mem[64]
                    mem[mem[64] + 32] = 32
                    _5402 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257
                    u = mem[64] + 96
                    while idx < _5402:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _6042 = mem[64]
                    mem[mem[64]] = _5350 + (32 * _5402) + -mem[64] + 64
                    mem[64] = _5350 + (32 * _5402) + 96
                    mem[_6042 + 64] = t
                    _6043 = mem[_6042]
                    require mem[_6042] >= 32
                    _6058 = mem[_6042 + 32]
                    require mem[_6042 + 32] <= test266151307()
                    require _6042 + mem[_6042 + 32] + 63 < _6042 + mem[_6042] + 32
                    _6066 = mem[_6042 + mem[_6042 + 32] + 32]
                    if mem[_6042 + mem[_6042 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _5350 + (32 * _5402) + floor32(mem[_6042 + mem[_6042 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6042 + mem[_6042 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _5350 + (32 * _5402) + floor32(mem[_6042 + mem[_6042 + 32] + 32]) + 97
                    mem[_5350 + (32 * _5402) + 96] = _6066
                    require _6058 + (32 * _6066) + 64 <= _6043 + 32
                    idx = 0
                    s = _6042 + _6058 + 64
                    t = _5350 + (32 * _5402) + 128
                    while idx < _6066:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _6066
                    idx = 0
                    s = _5350 + (32 * _5402) + 128
                    t = mem[64] + 68
                    while idx < _6066:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.uniqueAddresses(address[] rg1) with:
                            gas gas_remaining wei
                           args Array(len=_6066, data=mem[mem[64] + 68 len 32 * _6066])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7106 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7114 = mem[_7106]
                    require mem[_7106] <= test266151307()
                    require _7106 + mem[_7106] + 31 < _7106 + return_data.size
                    _7128 = mem[_7106 + mem[_7106]]
                    if mem[_7106 + mem[_7106]] > test266151307():
                        revert with 'NH{q', 65
                    if _7106 + ceil32(return_data.size) + floor32(mem[_7106 + mem[_7106]]) + 1 > test266151307() or floor32(mem[_7106 + mem[_7106]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _7106 + ceil32(return_data.size) + floor32(mem[_7106 + mem[_7106]]) + 1
                    mem[_7106 + ceil32(return_data.size)] = _7128
                    require _7114 + (32 * _7128) + 32 <= return_data.size
                    idx = 0
                    s = _7106 + _7114 + 32
                    t = _7106 + ceil32(return_data.size) + 32
                    while idx < _7128:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _7580 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _7128
                    idx = 0
                    s = _7106 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _7128:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _7580 + (32 * _7128) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257 len 32 * (2 * var140003) + 1] = call.data[calldata.size len 32 * (2 * var140003) + 1]
                if not var140003:
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 289] = 32
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 289
                    t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 353
                    while idx < 0:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return ''
                if 0 >= (2 * var140003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var140003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _5377 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5405 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5419 = mem[_5405]
                    require mem[_5405] == mem[_5405 + 12 len 20]
                    require ext_code.size(address(_5377))
                    staticcall address(_5377).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5493 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5503 = mem[_5493]
                    require mem[_5493] == mem[_5493 + 12 len 20]
                    if address(_5419) == wethAddress:
                        if mem[_5493 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = mem[_5493 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_5419)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_5503) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_5503)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _5353 = mem[64]
                mem[mem[64] + 32] = 32
                _5404 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257
                u = mem[64] + 96
                while idx < _5404:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _6044 = mem[64]
                mem[mem[64]] = _5353 + (32 * _5404) + -mem[64] + 64
                mem[64] = _5353 + (32 * _5404) + 96
                mem[_6044 + 64] = t
                _6045 = mem[_6044]
                require mem[_6044] >= 32
                _6059 = mem[_6044 + 32]
                require mem[_6044 + 32] <= test266151307()
                require _6044 + mem[_6044 + 32] + 63 < _6044 + mem[_6044] + 32
                _6067 = mem[_6044 + mem[_6044 + 32] + 32]
                if mem[_6044 + mem[_6044 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _5353 + (32 * _5404) + floor32(mem[_6044 + mem[_6044 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6044 + mem[_6044 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _5353 + (32 * _5404) + floor32(mem[_6044 + mem[_6044 + 32] + 32]) + 97
                mem[_5353 + (32 * _5404) + 96] = _6067
                require _6059 + (32 * _6067) + 64 <= _6045 + 32
                idx = 0
                s = _6044 + _6059 + 64
                t = _5353 + (32 * _5404) + 128
                while idx < _6067:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6595 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _6067
                idx = 0
                s = _5353 + (32 * _5404) + 128
                t = mem[64] + 68
                while idx < _6067:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _6595 + (32 * _6067) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7107 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7115 = mem[_7107]
                require mem[_7107] <= test266151307()
                require _7107 + mem[_7107] + 31 < _7107 + return_data.size
                _7129 = mem[_7107 + mem[_7107]]
                if mem[_7107 + mem[_7107]] > test266151307():
                    revert with 'NH{q', 65
                if _7107 + ceil32(return_data.size) + floor32(mem[_7107 + mem[_7107]]) + 1 > test266151307() or floor32(mem[_7107 + mem[_7107]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _7107 + ceil32(return_data.size) + floor32(mem[_7107 + mem[_7107]]) + 1
                mem[_7107 + ceil32(return_data.size)] = _7129
                require _7115 + (32 * _7129) + 32 <= return_data.size
                idx = 0
                s = _7107 + _7115 + 32
                t = _7107 + ceil32(return_data.size) + 32
                while idx < _7129:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7581 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _7129
                idx = 0
                s = _7107 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _7129:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _7581 + (32 * _7129) + -mem[64] + 64
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var137003 > (-1 * arg3 * arg2) - 1:
                revert with 'NH{q', 17
            if var141001 <= ext_call.return_data[0] - 1:
                if var153003 > (-1 * arg3 * arg2) - 1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var141003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var141003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225 > test266151307() or floor32(var141003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var141003
                require 32 * var141003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var141003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var141003 and 2 > -1 / var141003:
                    revert with 'NH{q', 17
                if 2 * var141003 > -2:
                    revert with 'NH{q', 17
                if (2 * var141003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225] = (2 * var141003) + 1
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 257
                if not (2 * var141003) + 1:
                    if not var141003:
                        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 289] = 32
                        idx = 0
                        s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 289
                        t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 353
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return ''
                    if 0 >= (2 * var141003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var141003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _5380 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5420 = mem[_5407]
                        require mem[_5407] == mem[_5407 + 12 len 20]
                        require ext_code.size(address(_5380))
                        staticcall address(_5380).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5495 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5504 = mem[_5495]
                        require mem[_5495] == mem[_5495 + 12 len 20]
                        if address(_5420) == wethAddress:
                            if mem[_5495 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = mem[_5495 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_5420)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_5504) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_5504)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _5356 = mem[64]
                    mem[mem[64] + 32] = 32
                    _5406 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257
                    u = mem[64] + 96
                    while idx < _5406:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _6046 = mem[64]
                    mem[mem[64]] = _5356 + (32 * _5406) + -mem[64] + 64
                    mem[64] = _5356 + (32 * _5406) + 96
                    mem[_6046 + 64] = t
                    _6047 = mem[_6046]
                    require mem[_6046] >= 32
                    _6060 = mem[_6046 + 32]
                    require mem[_6046 + 32] <= test266151307()
                    require _6046 + mem[_6046 + 32] + 63 < _6046 + mem[_6046] + 32
                    _6068 = mem[_6046 + mem[_6046 + 32] + 32]
                    if mem[_6046 + mem[_6046 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _5356 + (32 * _5406) + floor32(mem[_6046 + mem[_6046 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6046 + mem[_6046 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _5356 + (32 * _5406) + floor32(mem[_6046 + mem[_6046 + 32] + 32]) + 97
                    mem[_5356 + (32 * _5406) + 96] = _6068
                    require _6060 + (32 * _6068) + 64 <= _6047 + 32
                    idx = 0
                    s = _6046 + _6060 + 64
                    t = _5356 + (32 * _5406) + 128
                    while idx < _6068:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6596 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _6068
                    idx = 0
                    s = _5356 + (32 * _5406) + 128
                    t = mem[64] + 68
                    while idx < _6068:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _6596 + (32 * _6068) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7108 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7116 = mem[_7108]
                    require mem[_7108] <= test266151307()
                    require _7108 + mem[_7108] + 31 < _7108 + return_data.size
                    _7131 = mem[_7108 + mem[_7108]]
                    if mem[_7108 + mem[_7108]] > test266151307():
                        revert with 'NH{q', 65
                    if _7108 + ceil32(return_data.size) + floor32(mem[_7108 + mem[_7108]]) + 1 > test266151307() or floor32(mem[_7108 + mem[_7108]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _7108 + ceil32(return_data.size) + floor32(mem[_7108 + mem[_7108]]) + 1
                    mem[_7108 + ceil32(return_data.size)] = _7131
                    require _7116 + (32 * _7131) + 32 <= return_data.size
                    idx = 0
                    s = _7108 + _7116 + 32
                    t = _7108 + ceil32(return_data.size) + 32
                    while idx < _7131:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _7583 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _7131
                    idx = 0
                    s = _7108 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _7131:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _7583 + (32 * _7131) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257 len 32 * (2 * var141003) + 1] = call.data[calldata.size len 32 * (2 * var141003) + 1]
                if not var141003:
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 289] = 32
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 289
                    t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 353
                    while idx < 0:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return ''
                if 0 >= (2 * var141003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var141003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _5383 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5421 = mem[_5409]
                    require mem[_5409] == mem[_5409 + 12 len 20]
                    require ext_code.size(address(_5383))
                    staticcall address(_5383).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5497 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5505 = mem[_5497]
                    require mem[_5497] == mem[_5497 + 12 len 20]
                    if address(_5421) == wethAddress:
                        if mem[_5497 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = mem[_5497 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_5421)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_5505) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_5505)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _5359 = mem[64]
                mem[mem[64] + 32] = 32
                _5408 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257
                u = mem[64] + 96
                while idx < _5408:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _6048 = mem[64]
                mem[mem[64]] = _5359 + (32 * _5408) + -mem[64] + 64
                mem[64] = _5359 + (32 * _5408) + 96
                mem[_6048 + 64] = t
                _6049 = mem[_6048]
                require mem[_6048] >= 32
                _6061 = mem[_6048 + 32]
                require mem[_6048 + 32] <= test266151307()
                require _6048 + mem[_6048 + 32] + 63 < _6048 + mem[_6048] + 32
                _6069 = mem[_6048 + mem[_6048 + 32] + 32]
                if mem[_6048 + mem[_6048 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _5359 + (32 * _5408) + floor32(mem[_6048 + mem[_6048 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6048 + mem[_6048 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _5359 + (32 * _5408) + floor32(mem[_6048 + mem[_6048 + 32] + 32]) + 97
                mem[_5359 + (32 * _5408) + 96] = _6069
                require _6061 + (32 * _6069) + 64 <= _6049 + 32
                idx = 0
                s = _6048 + _6061 + 64
                t = _5359 + (32 * _5408) + 128
                while idx < _6069:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _6069
                idx = 0
                s = _5359 + (32 * _5408) + 128
                t = mem[64] + 68
                while idx < _6069:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.uniqueAddresses(address[] rg1) with:
                        gas gas_remaining wei
                       args Array(len=_6069, data=mem[mem[64] + 68 len 32 * _6069])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7109 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7117 = mem[_7109]
                require mem[_7109] <= test266151307()
                require _7109 + mem[_7109] + 31 < _7109 + return_data.size
                _7132 = mem[_7109 + mem[_7109]]
                if mem[_7109 + mem[_7109]] > test266151307():
                    revert with 'NH{q', 65
                if _7109 + ceil32(return_data.size) + floor32(mem[_7109 + mem[_7109]]) + 1 > test266151307() or floor32(mem[_7109 + mem[_7109]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _7109 + ceil32(return_data.size) + floor32(mem[_7109 + mem[_7109]]) + 1
                mem[_7109 + ceil32(return_data.size)] = _7132
                require _7117 + (32 * _7132) + 32 <= return_data.size
                idx = 0
                s = _7109 + _7117 + 32
                t = _7109 + ceil32(return_data.size) + 32
                while idx < _7132:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7584 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _7132
                idx = 0
                s = _7109 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _7132:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _7584 + (32 * _7132) + -mem[64] + 64
}

function tokensAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if False and ext_call.return_data[0] > 0:
        revert with 'NH{q', 17
    if 0 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] <= ext_call.return_data[0] - 1:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var128003 > -1:
                revert with 'NH{q', 17
            if var132001 <= ext_call.return_data[0]:
                if var144003 > -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var132003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var132003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225 > test266151307() or floor32(var132003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var132003
                require 32 * var132003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var132003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var132003 and 2 > -1 / var132003:
                    revert with 'NH{q', 17
                if 2 * var132003 > -2:
                    revert with 'NH{q', 17
                if (2 * var132003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225] = (2 * var132003) + 1
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 257
                if not (2 * var132003) + 1:
                    if not var132003:
                        mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 289] = 32
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 289
                        t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 353
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return ''
                    if 0 >= (2 * var132003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var132003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _5366 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5418 = mem[_5399]
                        require mem[_5399] == mem[_5399 + 12 len 20]
                        require ext_code.size(address(_5366))
                        staticcall address(_5366).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5487 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5502 = mem[_5487]
                        require mem[_5487] == mem[_5487 + 12 len 20]
                        if address(_5418) == wethAddress:
                            if mem[_5487 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = mem[_5487 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_5418)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_5502) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_5502)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _5342 = mem[64]
                    mem[mem[64] + 32] = 32
                    _5398 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257
                    u = mem[64] + 96
                    while idx < _5398:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _6038 = mem[64]
                    mem[mem[64]] = _5342 + (32 * _5398) + -mem[64] + 64
                    mem[64] = _5342 + (32 * _5398) + 96
                    mem[_6038 + 64] = t
                    _6039 = mem[_6038]
                    require mem[_6038] >= 32
                    _6058 = mem[_6038 + 32]
                    require mem[_6038 + 32] <= test266151307()
                    require _6038 + mem[_6038 + 32] + 63 < _6038 + mem[_6038] + 32
                    _6066 = mem[_6038 + mem[_6038 + 32] + 32]
                    if mem[_6038 + mem[_6038 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _5342 + (32 * _5398) + floor32(mem[_6038 + mem[_6038 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6038 + mem[_6038 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _5342 + (32 * _5398) + floor32(mem[_6038 + mem[_6038 + 32] + 32]) + 97
                    mem[_5342 + (32 * _5398) + 96] = _6066
                    require _6058 + (32 * _6066) + 64 <= _6039 + 32
                    idx = 0
                    s = _6038 + _6058 + 64
                    t = _5342 + (32 * _5398) + 128
                    while idx < _6066:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _6066
                    idx = 0
                    s = _5342 + (32 * _5398) + 128
                    t = mem[64] + 68
                    while idx < _6066:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.uniqueAddresses(address[] rg1) with:
                            gas gas_remaining wei
                           args Array(len=_6066, data=mem[mem[64] + 68 len 32 * _6066])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7106 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7114 = mem[_7106]
                    require mem[_7106] <= test266151307()
                    require _7106 + mem[_7106] + 31 < _7106 + return_data.size
                    _7126 = mem[_7106 + mem[_7106]]
                    if mem[_7106 + mem[_7106]] > test266151307():
                        revert with 'NH{q', 65
                    if _7106 + ceil32(return_data.size) + floor32(mem[_7106 + mem[_7106]]) + 1 > test266151307() or floor32(mem[_7106 + mem[_7106]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _7106 + ceil32(return_data.size) + floor32(mem[_7106 + mem[_7106]]) + 1
                    mem[_7106 + ceil32(return_data.size)] = _7126
                    require _7114 + (32 * _7126) + 32 <= return_data.size
                    idx = 0
                    s = _7106 + _7114 + 32
                    t = _7106 + ceil32(return_data.size) + 32
                    while idx < _7126:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _7578 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _7126
                    idx = 0
                    s = _7106 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _7126:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _7578 + (32 * _7126) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257 len 32 * (2 * var132003) + 1] = call.data[calldata.size len 32 * (2 * var132003) + 1]
                if not var132003:
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 289] = 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 289
                    t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + (32 * (2 * var132003) + 1) + 353
                    while idx < 0:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return ''
                if 0 >= (2 * var132003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var132003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _5369 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5419 = mem[_5401]
                    require mem[_5401] == mem[_5401 + 12 len 20]
                    require ext_code.size(address(_5369))
                    staticcall address(_5369).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5489 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5503 = mem[_5489]
                    require mem[_5489] == mem[_5489 + 12 len 20]
                    if address(_5419) == wethAddress:
                        if mem[_5489 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = mem[_5489 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_5419)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_5503) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_5503)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _5345 = mem[64]
                mem[mem[64] + 32] = 32
                _5400 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257
                u = mem[64] + 96
                while idx < _5400:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _6040 = mem[64]
                mem[mem[64]] = _5345 + (32 * _5400) + -mem[64] + 64
                mem[64] = _5345 + (32 * _5400) + 96
                mem[_6040 + 64] = t
                _6041 = mem[_6040]
                require mem[_6040] >= 32
                _6059 = mem[_6040 + 32]
                require mem[_6040 + 32] <= test266151307()
                require _6040 + mem[_6040 + 32] + 63 < _6040 + mem[_6040] + 32
                _6067 = mem[_6040 + mem[_6040 + 32] + 32]
                if mem[_6040 + mem[_6040 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _5345 + (32 * _5400) + floor32(mem[_6040 + mem[_6040 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6040 + mem[_6040 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _5345 + (32 * _5400) + floor32(mem[_6040 + mem[_6040 + 32] + 32]) + 97
                mem[_5345 + (32 * _5400) + 96] = _6067
                require _6059 + (32 * _6067) + 64 <= _6041 + 32
                idx = 0
                s = _6040 + _6059 + 64
                t = _5345 + (32 * _5400) + 128
                while idx < _6067:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6595 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _6067
                idx = 0
                s = _5345 + (32 * _5400) + 128
                t = mem[64] + 68
                while idx < _6067:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _6595 + (32 * _6067) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7107 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7115 = mem[_7107]
                require mem[_7107] <= test266151307()
                require _7107 + mem[_7107] + 31 < _7107 + return_data.size
                _7127 = mem[_7107 + mem[_7107]]
                if mem[_7107 + mem[_7107]] > test266151307():
                    revert with 'NH{q', 65
                if _7107 + ceil32(return_data.size) + floor32(mem[_7107 + mem[_7107]]) + 1 > test266151307() or floor32(mem[_7107 + mem[_7107]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _7107 + ceil32(return_data.size) + floor32(mem[_7107 + mem[_7107]]) + 1
                mem[_7107 + ceil32(return_data.size)] = _7127
                require _7115 + (32 * _7127) + 32 <= return_data.size
                idx = 0
                s = _7107 + _7115 + 32
                t = _7107 + ceil32(return_data.size) + 32
                while idx < _7127:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7579 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _7127
                idx = 0
                s = _7107 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _7127:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _7579 + (32 * _7127) + -mem[64] + 64
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var129003 > -1:
                revert with 'NH{q', 17
            if var133001 <= ext_call.return_data[0]:
                if var145003 > -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var133003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var133003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225 > test266151307() or floor32(var133003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var133003
                require 32 * var133003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var133003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var133003 and 2 > -1 / var133003:
                    revert with 'NH{q', 17
                if 2 * var133003 > -2:
                    revert with 'NH{q', 17
                if (2 * var133003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225] = (2 * var133003) + 1
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 257
                if not (2 * var133003) + 1:
                    if not var133003:
                        mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 289] = 32
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 289
                        t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 353
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return ''
                    if 0 >= (2 * var133003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var133003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _5372 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5403 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5420 = mem[_5403]
                        require mem[_5403] == mem[_5403 + 12 len 20]
                        require ext_code.size(address(_5372))
                        staticcall address(_5372).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5491 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5504 = mem[_5491]
                        require mem[_5491] == mem[_5491 + 12 len 20]
                        if address(_5420) == wethAddress:
                            if mem[_5491 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = mem[_5491 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_5420)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_5504) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_5504)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _5348 = mem[64]
                    mem[mem[64] + 32] = 32
                    _5402 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257
                    u = mem[64] + 96
                    while idx < _5402:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _6042 = mem[64]
                    mem[mem[64]] = _5348 + (32 * _5402) + -mem[64] + 64
                    mem[64] = _5348 + (32 * _5402) + 96
                    mem[_6042 + 64] = t
                    _6043 = mem[_6042]
                    require mem[_6042] >= 32
                    _6060 = mem[_6042 + 32]
                    require mem[_6042 + 32] <= test266151307()
                    require _6042 + mem[_6042 + 32] + 63 < _6042 + mem[_6042] + 32
                    _6068 = mem[_6042 + mem[_6042 + 32] + 32]
                    if mem[_6042 + mem[_6042 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _5348 + (32 * _5402) + floor32(mem[_6042 + mem[_6042 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6042 + mem[_6042 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _5348 + (32 * _5402) + floor32(mem[_6042 + mem[_6042 + 32] + 32]) + 97
                    mem[_5348 + (32 * _5402) + 96] = _6068
                    require _6060 + (32 * _6068) + 64 <= _6043 + 32
                    idx = 0
                    s = _6042 + _6060 + 64
                    t = _5348 + (32 * _5402) + 128
                    while idx < _6068:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6596 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _6068
                    idx = 0
                    s = _5348 + (32 * _5402) + 128
                    t = mem[64] + 68
                    while idx < _6068:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _6596 + (32 * _6068) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7108 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7116 = mem[_7108]
                    require mem[_7108] <= test266151307()
                    require _7108 + mem[_7108] + 31 < _7108 + return_data.size
                    _7129 = mem[_7108 + mem[_7108]]
                    if mem[_7108 + mem[_7108]] > test266151307():
                        revert with 'NH{q', 65
                    if _7108 + ceil32(return_data.size) + floor32(mem[_7108 + mem[_7108]]) + 1 > test266151307() or floor32(mem[_7108 + mem[_7108]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _7108 + ceil32(return_data.size) + floor32(mem[_7108 + mem[_7108]]) + 1
                    mem[_7108 + ceil32(return_data.size)] = _7129
                    require _7116 + (32 * _7129) + 32 <= return_data.size
                    idx = 0
                    s = _7108 + _7116 + 32
                    t = _7108 + ceil32(return_data.size) + 32
                    while idx < _7129:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _7581 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _7129
                    idx = 0
                    s = _7108 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _7129:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _7581 + (32 * _7129) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257 len 32 * (2 * var133003) + 1] = call.data[calldata.size len 32 * (2 * var133003) + 1]
                if not var133003:
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 289] = 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 289
                    t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + (32 * (2 * var133003) + 1) + 353
                    while idx < 0:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return ''
                if 0 >= (2 * var133003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var133003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _5375 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5405 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5421 = mem[_5405]
                    require mem[_5405] == mem[_5405 + 12 len 20]
                    require ext_code.size(address(_5375))
                    staticcall address(_5375).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5493 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5505 = mem[_5493]
                    require mem[_5493] == mem[_5493 + 12 len 20]
                    if address(_5421) == wethAddress:
                        if mem[_5493 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = mem[_5493 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_5421)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_5505) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_5505)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _5351 = mem[64]
                mem[mem[64] + 32] = 32
                _5404 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257
                u = mem[64] + 96
                while idx < _5404:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _6044 = mem[64]
                mem[mem[64]] = _5351 + (32 * _5404) + -mem[64] + 64
                mem[64] = _5351 + (32 * _5404) + 96
                mem[_6044 + 64] = t
                _6045 = mem[_6044]
                require mem[_6044] >= 32
                _6061 = mem[_6044 + 32]
                require mem[_6044 + 32] <= test266151307()
                require _6044 + mem[_6044 + 32] + 63 < _6044 + mem[_6044] + 32
                _6069 = mem[_6044 + mem[_6044 + 32] + 32]
                if mem[_6044 + mem[_6044 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _5351 + (32 * _5404) + floor32(mem[_6044 + mem[_6044 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6044 + mem[_6044 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _5351 + (32 * _5404) + floor32(mem[_6044 + mem[_6044 + 32] + 32]) + 97
                mem[_5351 + (32 * _5404) + 96] = _6069
                require _6061 + (32 * _6069) + 64 <= _6045 + 32
                idx = 0
                s = _6044 + _6061 + 64
                t = _5351 + (32 * _5404) + 128
                while idx < _6069:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _6069
                idx = 0
                s = _5351 + (32 * _5404) + 128
                t = mem[64] + 68
                while idx < _6069:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.uniqueAddresses(address[] rg1) with:
                        gas gas_remaining wei
                       args Array(len=_6069, data=mem[mem[64] + 68 len 32 * _6069])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7109 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7117 = mem[_7109]
                require mem[_7109] <= test266151307()
                require _7109 + mem[_7109] + 31 < _7109 + return_data.size
                _7130 = mem[_7109 + mem[_7109]]
                if mem[_7109 + mem[_7109]] > test266151307():
                    revert with 'NH{q', 65
                if _7109 + ceil32(return_data.size) + floor32(mem[_7109 + mem[_7109]]) + 1 > test266151307() or floor32(mem[_7109 + mem[_7109]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _7109 + ceil32(return_data.size) + floor32(mem[_7109 + mem[_7109]]) + 1
                mem[_7109 + ceil32(return_data.size)] = _7130
                require _7117 + (32 * _7130) + 32 <= return_data.size
                idx = 0
                s = _7109 + _7117 + 32
                t = _7109 + ceil32(return_data.size) + 32
                while idx < _7130:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7582 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _7130
                idx = 0
                s = _7109 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _7130:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _7582 + (32 * _7130) + -mem[64] + 64
    else:
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var136003 > -1:
                revert with 'NH{q', 17
            if var140001 <= ext_call.return_data[0] - 1:
                if var152003 > -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var140003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var140003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225 > test266151307() or floor32(var140003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var140003
                require 32 * var140003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var140003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var140003 and 2 > -1 / var140003:
                    revert with 'NH{q', 17
                if 2 * var140003 > -2:
                    revert with 'NH{q', 17
                if (2 * var140003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225] = (2 * var140003) + 1
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 257
                if not (2 * var140003) + 1:
                    if not var140003:
                        mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 289] = 32
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 289
                        t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 353
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return ''
                    if 0 >= (2 * var140003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var140003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _5378 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5422 = mem[_5407]
                        require mem[_5407] == mem[_5407 + 12 len 20]
                        require ext_code.size(address(_5378))
                        staticcall address(_5378).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5495 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5506 = mem[_5495]
                        require mem[_5495] == mem[_5495 + 12 len 20]
                        if address(_5422) == wethAddress:
                            if mem[_5495 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = mem[_5495 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_5422)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_5506) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_5506)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _5354 = mem[64]
                    mem[mem[64] + 32] = 32
                    _5406 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257
                    u = mem[64] + 96
                    while idx < _5406:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _6046 = mem[64]
                    mem[mem[64]] = _5354 + (32 * _5406) + -mem[64] + 64
                    mem[64] = _5354 + (32 * _5406) + 96
                    mem[_6046 + 64] = t
                    _6047 = mem[_6046]
                    require mem[_6046] >= 32
                    _6062 = mem[_6046 + 32]
                    require mem[_6046 + 32] <= test266151307()
                    require _6046 + mem[_6046 + 32] + 63 < _6046 + mem[_6046] + 32
                    _6070 = mem[_6046 + mem[_6046 + 32] + 32]
                    if mem[_6046 + mem[_6046 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _5354 + (32 * _5406) + floor32(mem[_6046 + mem[_6046 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6046 + mem[_6046 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _5354 + (32 * _5406) + floor32(mem[_6046 + mem[_6046 + 32] + 32]) + 97
                    mem[_5354 + (32 * _5406) + 96] = _6070
                    require _6062 + (32 * _6070) + 64 <= _6047 + 32
                    idx = 0
                    s = _6046 + _6062 + 64
                    t = _5354 + (32 * _5406) + 128
                    while idx < _6070:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6598 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _6070
                    idx = 0
                    s = _5354 + (32 * _5406) + 128
                    t = mem[64] + 68
                    while idx < _6070:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _6598 + (32 * _6070) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7110 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7118 = mem[_7110]
                    require mem[_7110] <= test266151307()
                    require _7110 + mem[_7110] + 31 < _7110 + return_data.size
                    _7132 = mem[_7110 + mem[_7110]]
                    if mem[_7110 + mem[_7110]] > test266151307():
                        revert with 'NH{q', 65
                    if _7110 + ceil32(return_data.size) + floor32(mem[_7110 + mem[_7110]]) + 1 > test266151307() or floor32(mem[_7110 + mem[_7110]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _7110 + ceil32(return_data.size) + floor32(mem[_7110 + mem[_7110]]) + 1
                    mem[_7110 + ceil32(return_data.size)] = _7132
                    require _7118 + (32 * _7132) + 32 <= return_data.size
                    idx = 0
                    s = _7110 + _7118 + 32
                    t = _7110 + ceil32(return_data.size) + 32
                    while idx < _7132:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _7584 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _7132
                    idx = 0
                    s = _7110 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _7132:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _7584 + (32 * _7132) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257 len 32 * (2 * var140003) + 1] = call.data[calldata.size len 32 * (2 * var140003) + 1]
                if not var140003:
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 289] = 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 289
                    t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + (32 * (2 * var140003) + 1) + 353
                    while idx < 0:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return ''
                if 0 >= (2 * var140003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var140003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _5381 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5423 = mem[_5409]
                    require mem[_5409] == mem[_5409 + 12 len 20]
                    require ext_code.size(address(_5381))
                    staticcall address(_5381).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5497 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5507 = mem[_5497]
                    require mem[_5497] == mem[_5497 + 12 len 20]
                    if address(_5423) == wethAddress:
                        if mem[_5497 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = mem[_5497 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_5423)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_5507) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_5507)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _5357 = mem[64]
                mem[mem[64] + 32] = 32
                _5408 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257
                u = mem[64] + 96
                while idx < _5408:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _6048 = mem[64]
                mem[mem[64]] = _5357 + (32 * _5408) + -mem[64] + 64
                mem[64] = _5357 + (32 * _5408) + 96
                mem[_6048 + 64] = t
                _6049 = mem[_6048]
                require mem[_6048] >= 32
                _6063 = mem[_6048 + 32]
                require mem[_6048 + 32] <= test266151307()
                require _6048 + mem[_6048 + 32] + 63 < _6048 + mem[_6048] + 32
                _6071 = mem[_6048 + mem[_6048 + 32] + 32]
                if mem[_6048 + mem[_6048 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _5357 + (32 * _5408) + floor32(mem[_6048 + mem[_6048 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6048 + mem[_6048 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _5357 + (32 * _5408) + floor32(mem[_6048 + mem[_6048 + 32] + 32]) + 97
                mem[_5357 + (32 * _5408) + 96] = _6071
                require _6063 + (32 * _6071) + 64 <= _6049 + 32
                idx = 0
                s = _6048 + _6063 + 64
                t = _5357 + (32 * _5408) + 128
                while idx < _6071:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _6071
                idx = 0
                s = _5357 + (32 * _5408) + 128
                t = mem[64] + 68
                while idx < _6071:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.uniqueAddresses(address[] rg1) with:
                        gas gas_remaining wei
                       args Array(len=_6071, data=mem[mem[64] + 68 len 32 * _6071])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7111 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7119 = mem[_7111]
                require mem[_7111] <= test266151307()
                require _7111 + mem[_7111] + 31 < _7111 + return_data.size
                _7133 = mem[_7111 + mem[_7111]]
                if mem[_7111 + mem[_7111]] > test266151307():
                    revert with 'NH{q', 65
                if _7111 + ceil32(return_data.size) + floor32(mem[_7111 + mem[_7111]]) + 1 > test266151307() or floor32(mem[_7111 + mem[_7111]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _7111 + ceil32(return_data.size) + floor32(mem[_7111 + mem[_7111]]) + 1
                mem[_7111 + ceil32(return_data.size)] = _7133
                require _7119 + (32 * _7133) + 32 <= return_data.size
                idx = 0
                s = _7111 + _7119 + 32
                t = _7111 + ceil32(return_data.size) + 32
                while idx < _7133:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7585 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _7133
                idx = 0
                s = _7111 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _7133:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _7585 + (32 * _7133) + -mem[64] + 64
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var137003 > -1:
                revert with 'NH{q', 17
            if var141001 <= ext_call.return_data[0] - 1:
                if var153003 > -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = (32 * ext_call.return_data[0]) + 64
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var141003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var141003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225 > test266151307() or floor32(var141003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var141003
                require 32 * var141003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var141003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var141003 and 2 > -1 / var141003:
                    revert with 'NH{q', 17
                if 2 * var141003 > -2:
                    revert with 'NH{q', 17
                if (2 * var141003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225] = (2 * var141003) + 1
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 257
                if not (2 * var141003) + 1:
                    if not var141003:
                        mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 289] = 32
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 289
                        t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 353
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return ''
                    if 0 >= (2 * var141003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var141003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _5384 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5411 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5424 = mem[_5411]
                        require mem[_5411] == mem[_5411 + 12 len 20]
                        require ext_code.size(address(_5384))
                        staticcall address(_5384).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5499 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5508 = mem[_5499]
                        require mem[_5499] == mem[_5499 + 12 len 20]
                        if address(_5424) == wethAddress:
                            if mem[_5499 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = mem[_5499 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_5424)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_5508) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_5508)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _5360 = mem[64]
                    mem[mem[64] + 32] = 32
                    _5410 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257
                    u = mem[64] + 96
                    while idx < _5410:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _6050 = mem[64]
                    mem[mem[64]] = _5360 + (32 * _5410) + -mem[64] + 64
                    mem[64] = _5360 + (32 * _5410) + 96
                    mem[_6050 + 64] = t
                    _6051 = mem[_6050]
                    require mem[_6050] >= 32
                    _6064 = mem[_6050 + 32]
                    require mem[_6050 + 32] <= test266151307()
                    require _6050 + mem[_6050 + 32] + 63 < _6050 + mem[_6050] + 32
                    _6072 = mem[_6050 + mem[_6050 + 32] + 32]
                    if mem[_6050 + mem[_6050 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _5360 + (32 * _5410) + floor32(mem[_6050 + mem[_6050 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6050 + mem[_6050 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _5360 + (32 * _5410) + floor32(mem[_6050 + mem[_6050 + 32] + 32]) + 97
                    mem[_5360 + (32 * _5410) + 96] = _6072
                    require _6064 + (32 * _6072) + 64 <= _6051 + 32
                    idx = 0
                    s = _6050 + _6064 + 64
                    t = _5360 + (32 * _5410) + 128
                    while idx < _6072:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _6072
                    idx = 0
                    s = _5360 + (32 * _5410) + 128
                    t = mem[64] + 68
                    while idx < _6072:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.uniqueAddresses(address[] rg1) with:
                            gas gas_remaining wei
                           args Array(len=_6072, data=mem[mem[64] + 68 len 32 * _6072])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7112 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7120 = mem[_7112]
                    require mem[_7112] <= test266151307()
                    require _7112 + mem[_7112] + 31 < _7112 + return_data.size
                    _7135 = mem[_7112 + mem[_7112]]
                    if mem[_7112 + mem[_7112]] > test266151307():
                        revert with 'NH{q', 65
                    if _7112 + ceil32(return_data.size) + floor32(mem[_7112 + mem[_7112]]) + 1 > test266151307() or floor32(mem[_7112 + mem[_7112]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _7112 + ceil32(return_data.size) + floor32(mem[_7112 + mem[_7112]]) + 1
                    mem[_7112 + ceil32(return_data.size)] = _7135
                    require _7120 + (32 * _7135) + 32 <= return_data.size
                    idx = 0
                    s = _7112 + _7120 + 32
                    t = _7112 + ceil32(return_data.size) + 32
                    while idx < _7135:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _7587 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _7135
                    idx = 0
                    s = _7112 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _7135:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _7587 + (32 * _7135) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257 len 32 * (2 * var141003) + 1] = call.data[calldata.size len 32 * (2 * var141003) + 1]
                if not var141003:
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 289] = 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 289
                    t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + (32 * (2 * var141003) + 1) + 353
                    while idx < 0:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return ''
                if 0 >= (2 * var141003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var141003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _5387 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5425 = mem[_5413]
                    require mem[_5413] == mem[_5413 + 12 len 20]
                    require ext_code.size(address(_5387))
                    staticcall address(_5387).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5501 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5509 = mem[_5501]
                    require mem[_5501] == mem[_5501 + 12 len 20]
                    if address(_5425) == wethAddress:
                        if mem[_5501 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = mem[_5501 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_5425)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_5509) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_5509)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _5363 = mem[64]
                mem[mem[64] + 32] = 32
                _5412 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257
                u = mem[64] + 96
                while idx < _5412:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _6052 = mem[64]
                mem[mem[64]] = _5363 + (32 * _5412) + -mem[64] + 64
                mem[64] = _5363 + (32 * _5412) + 96
                mem[_6052 + 64] = t
                _6053 = mem[_6052]
                require mem[_6052] >= 32
                _6065 = mem[_6052 + 32]
                require mem[_6052 + 32] <= test266151307()
                require _6052 + mem[_6052 + 32] + 63 < _6052 + mem[_6052] + 32
                _6073 = mem[_6052 + mem[_6052 + 32] + 32]
                if mem[_6052 + mem[_6052 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _5363 + (32 * _5412) + floor32(mem[_6052 + mem[_6052 + 32] + 32]) + 97 > test266151307() or floor32(mem[_6052 + mem[_6052 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _5363 + (32 * _5412) + floor32(mem[_6052 + mem[_6052 + 32] + 32]) + 97
                mem[_5363 + (32 * _5412) + 96] = _6073
                require _6065 + (32 * _6073) + 64 <= _6053 + 32
                idx = 0
                s = _6052 + _6065 + 64
                t = _5363 + (32 * _5412) + 128
                while idx < _6073:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _6073
                idx = 0
                s = _5363 + (32 * _5412) + 128
                t = mem[64] + 68
                while idx < _6073:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.uniqueAddresses(address[] rg1) with:
                        gas gas_remaining wei
                       args Array(len=_6073, data=mem[mem[64] + 68 len 32 * _6073])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7113 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7121 = mem[_7113]
                require mem[_7113] <= test266151307()
                require _7113 + mem[_7113] + 31 < _7113 + return_data.size
                _7136 = mem[_7113 + mem[_7113]]
                if mem[_7113 + mem[_7113]] > test266151307():
                    revert with 'NH{q', 65
                if _7113 + ceil32(return_data.size) + floor32(mem[_7113 + mem[_7113]]) + 1 > test266151307() or floor32(mem[_7113 + mem[_7113]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _7113 + ceil32(return_data.size) + floor32(mem[_7113 + mem[_7113]]) + 1
                mem[_7113 + ceil32(return_data.size)] = _7136
                require _7121 + (32 * _7136) + 32 <= return_data.size
                idx = 0
                s = _7113 + _7121 + 32
                t = _7113 + ceil32(return_data.size) + 32
                while idx < _7136:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7588 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _7136
                idx = 0
                s = _7113 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _7136:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _7588 + (32 * _7136) + -mem[64] + 64
}



}
