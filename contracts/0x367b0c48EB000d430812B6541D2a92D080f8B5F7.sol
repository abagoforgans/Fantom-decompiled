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
                    if 0 >= (2 * var132003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var132003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4796 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4821 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4840 = mem[_4821]
                        require mem[_4821] == mem[_4821 + 12 len 20]
                        require ext_code.size(address(_4796))
                        staticcall address(_4796).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4909 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4924 = mem[_4909]
                        require mem[_4909] == mem[_4909 + 12 len 20]
                        if address(_4840) == wethAddress:
                            if mem[_4909 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = mem[_4909 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_4840)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4924) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_4924)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4780 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4820 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257
                    u = mem[64] + 96
                    while idx < _4820:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5420 = mem[64]
                    mem[mem[64]] = _4780 + (32 * _4820) + -mem[64] + 64
                    mem[64] = _4780 + (32 * _4820) + 96
                    mem[_5420 + 64] = t
                    _5421 = mem[_5420]
                    require mem[_5420] >= 32
                    _5440 = mem[_5420 + 32]
                    require mem[_5420 + 32] <= test266151307()
                    require _5420 + mem[_5420 + 32] + 63 < _5420 + mem[_5420] + 32
                    _5448 = mem[_5420 + mem[_5420 + 32] + 32]
                    if mem[_5420 + mem[_5420 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4780 + (32 * _4820) + floor32(mem[_5420 + mem[_5420 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5420 + mem[_5420 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4780 + (32 * _4820) + floor32(mem[_5420 + mem[_5420 + 32] + 32]) + 97
                    mem[_4780 + (32 * _4820) + 96] = _5448
                    require _5440 + (32 * _5448) + 64 <= _5421 + 32
                    idx = 0
                    s = _5420 + _5440 + 64
                    t = _4780 + (32 * _4820) + 128
                    while idx < _5448:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5448
                    idx = 0
                    s = _4780 + (32 * _4820) + 128
                    t = mem[64] + 68
                    while idx < _5448:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.uniqueAddresses(address[] rg1) with:
                            gas gas_remaining wei
                           args Array(len=_5448, data=mem[mem[64] + 68 len 32 * _5448])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6408 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6416 = mem[_6408]
                    require mem[_6408] <= test266151307()
                    require _6408 + mem[_6408] + 31 < _6408 + return_data.size
                    _6428 = mem[_6408 + mem[_6408]]
                    if mem[_6408 + mem[_6408]] > test266151307():
                        revert with 'NH{q', 65
                    if _6408 + ceil32(return_data.size) + floor32(mem[_6408 + mem[_6408]]) + 1 > test266151307() or floor32(mem[_6408 + mem[_6408]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6408 + ceil32(return_data.size) + floor32(mem[_6408 + mem[_6408]]) + 1
                    mem[_6408 + ceil32(return_data.size)] = _6428
                    require _6416 + (32 * _6428) + 32 <= return_data.size
                    idx = 0
                    s = _6408 + _6416 + 32
                    t = _6408 + ceil32(return_data.size) + 32
                    while idx < _6428:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6840 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6428
                    idx = 0
                    s = _6408 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6428:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6840 + (32 * _6428) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257 len 32 * (2 * var132003) + 1] = call.data[calldata.size len 32 * (2 * var132003) + 1]
                if 0 >= (2 * var132003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var132003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4799 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4841 = mem[_4823]
                    require mem[_4823] == mem[_4823 + 12 len 20]
                    require ext_code.size(address(_4799))
                    staticcall address(_4799).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4911 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4925 = mem[_4911]
                    require mem[_4911] == mem[_4911 + 12 len 20]
                    if address(_4841) == wethAddress:
                        if mem[_4911 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = mem[_4911 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_4841)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4925) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_4925)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4782 = mem[64]
                mem[mem[64] + 32] = 32
                _4822 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257
                u = mem[64] + 96
                while idx < _4822:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5422 = mem[64]
                mem[mem[64]] = _4782 + (32 * _4822) + -mem[64] + 64
                mem[64] = _4782 + (32 * _4822) + 96
                mem[_5422 + 64] = t
                _5423 = mem[_5422]
                require mem[_5422] >= 32
                _5441 = mem[_5422 + 32]
                require mem[_5422 + 32] <= test266151307()
                require _5422 + mem[_5422 + 32] + 63 < _5422 + mem[_5422] + 32
                _5449 = mem[_5422 + mem[_5422 + 32] + 32]
                if mem[_5422 + mem[_5422 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4782 + (32 * _4822) + floor32(mem[_5422 + mem[_5422 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5422 + mem[_5422 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4782 + (32 * _4822) + floor32(mem[_5422 + mem[_5422 + 32] + 32]) + 97
                mem[_4782 + (32 * _4822) + 96] = _5449
                require _5441 + (32 * _5449) + 64 <= _5423 + 32
                idx = 0
                s = _5422 + _5441 + 64
                t = _4782 + (32 * _4822) + 128
                while idx < _5449:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5937 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5449
                idx = 0
                s = _4782 + (32 * _4822) + 128
                t = mem[64] + 68
                while idx < _5449:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5937 + (32 * _5449) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6409 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6417 = mem[_6409]
                require mem[_6409] <= test266151307()
                require _6409 + mem[_6409] + 31 < _6409 + return_data.size
                _6429 = mem[_6409 + mem[_6409]]
                if mem[_6409 + mem[_6409]] > test266151307():
                    revert with 'NH{q', 65
                if _6409 + ceil32(return_data.size) + floor32(mem[_6409 + mem[_6409]]) + 1 > test266151307() or floor32(mem[_6409 + mem[_6409]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6409 + ceil32(return_data.size) + floor32(mem[_6409 + mem[_6409]]) + 1
                mem[_6409 + ceil32(return_data.size)] = _6429
                require _6417 + (32 * _6429) + 32 <= return_data.size
                idx = 0
                s = _6409 + _6417 + 32
                t = _6409 + ceil32(return_data.size) + 32
                while idx < _6429:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6841 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6429
                idx = 0
                s = _6409 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6429:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6841 + (32 * _6429) + -mem[64] + 64
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
                    if 0 >= (2 * var133003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var133003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4802 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4825 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4842 = mem[_4825]
                        require mem[_4825] == mem[_4825 + 12 len 20]
                        require ext_code.size(address(_4802))
                        staticcall address(_4802).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4913 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4926 = mem[_4913]
                        require mem[_4913] == mem[_4913 + 12 len 20]
                        if address(_4842) == wethAddress:
                            if mem[_4913 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = mem[_4913 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_4842)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4926) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_4926)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4784 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4824 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257
                    u = mem[64] + 96
                    while idx < _4824:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5424 = mem[64]
                    mem[mem[64]] = _4784 + (32 * _4824) + -mem[64] + 64
                    mem[64] = _4784 + (32 * _4824) + 96
                    mem[_5424 + 64] = t
                    _5425 = mem[_5424]
                    require mem[_5424] >= 32
                    _5442 = mem[_5424 + 32]
                    require mem[_5424 + 32] <= test266151307()
                    require _5424 + mem[_5424 + 32] + 63 < _5424 + mem[_5424] + 32
                    _5450 = mem[_5424 + mem[_5424 + 32] + 32]
                    if mem[_5424 + mem[_5424 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4784 + (32 * _4824) + floor32(mem[_5424 + mem[_5424 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5424 + mem[_5424 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4784 + (32 * _4824) + floor32(mem[_5424 + mem[_5424 + 32] + 32]) + 97
                    mem[_4784 + (32 * _4824) + 96] = _5450
                    require _5442 + (32 * _5450) + 64 <= _5425 + 32
                    idx = 0
                    s = _5424 + _5442 + 64
                    t = _4784 + (32 * _4824) + 128
                    while idx < _5450:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5938 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5450
                    idx = 0
                    s = _4784 + (32 * _4824) + 128
                    t = mem[64] + 68
                    while idx < _5450:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5938 + (32 * _5450) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6410 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6418 = mem[_6410]
                    require mem[_6410] <= test266151307()
                    require _6410 + mem[_6410] + 31 < _6410 + return_data.size
                    _6431 = mem[_6410 + mem[_6410]]
                    if mem[_6410 + mem[_6410]] > test266151307():
                        revert with 'NH{q', 65
                    if _6410 + ceil32(return_data.size) + floor32(mem[_6410 + mem[_6410]]) + 1 > test266151307() or floor32(mem[_6410 + mem[_6410]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6410 + ceil32(return_data.size) + floor32(mem[_6410 + mem[_6410]]) + 1
                    mem[_6410 + ceil32(return_data.size)] = _6431
                    require _6418 + (32 * _6431) + 32 <= return_data.size
                    idx = 0
                    s = _6410 + _6418 + 32
                    t = _6410 + ceil32(return_data.size) + 32
                    while idx < _6431:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6842 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6431
                    idx = 0
                    s = _6410 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6431:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6842 + (32 * _6431) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257 len 32 * (2 * var133003) + 1] = call.data[calldata.size len 32 * (2 * var133003) + 1]
                if 0 >= (2 * var133003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var133003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4805 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4827 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4843 = mem[_4827]
                    require mem[_4827] == mem[_4827 + 12 len 20]
                    require ext_code.size(address(_4805))
                    staticcall address(_4805).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4915 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4927 = mem[_4915]
                    require mem[_4915] == mem[_4915 + 12 len 20]
                    if address(_4843) == wethAddress:
                        if mem[_4915 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = mem[_4915 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_4843)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4927) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_4927)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4786 = mem[64]
                mem[mem[64] + 32] = 32
                _4826 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257
                u = mem[64] + 96
                while idx < _4826:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5426 = mem[64]
                mem[mem[64]] = _4786 + (32 * _4826) + -mem[64] + 64
                mem[64] = _4786 + (32 * _4826) + 96
                mem[_5426 + 64] = t
                _5427 = mem[_5426]
                require mem[_5426] >= 32
                _5443 = mem[_5426 + 32]
                require mem[_5426 + 32] <= test266151307()
                require _5426 + mem[_5426 + 32] + 63 < _5426 + mem[_5426] + 32
                _5451 = mem[_5426 + mem[_5426 + 32] + 32]
                if mem[_5426 + mem[_5426 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4786 + (32 * _4826) + floor32(mem[_5426 + mem[_5426 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5426 + mem[_5426 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4786 + (32 * _4826) + floor32(mem[_5426 + mem[_5426 + 32] + 32]) + 97
                mem[_4786 + (32 * _4826) + 96] = _5451
                require _5443 + (32 * _5451) + 64 <= _5427 + 32
                idx = 0
                s = _5426 + _5443 + 64
                t = _4786 + (32 * _4826) + 128
                while idx < _5451:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5451
                idx = 0
                s = _4786 + (32 * _4826) + 128
                t = mem[64] + 68
                while idx < _5451:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.uniqueAddresses(address[] rg1) with:
                        gas gas_remaining wei
                       args Array(len=_5451, data=mem[mem[64] + 68 len 32 * _5451])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6411 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6419 = mem[_6411]
                require mem[_6411] <= test266151307()
                require _6411 + mem[_6411] + 31 < _6411 + return_data.size
                _6432 = mem[_6411 + mem[_6411]]
                if mem[_6411 + mem[_6411]] > test266151307():
                    revert with 'NH{q', 65
                if _6411 + ceil32(return_data.size) + floor32(mem[_6411 + mem[_6411]]) + 1 > test266151307() or floor32(mem[_6411 + mem[_6411]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6411 + ceil32(return_data.size) + floor32(mem[_6411 + mem[_6411]]) + 1
                mem[_6411 + ceil32(return_data.size)] = _6432
                require _6419 + (32 * _6432) + 32 <= return_data.size
                idx = 0
                s = _6411 + _6419 + 32
                t = _6411 + ceil32(return_data.size) + 32
                while idx < _6432:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6843 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6432
                idx = 0
                s = _6411 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6432:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6843 + (32 * _6432) + -mem[64] + 64
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
                    if 0 >= (2 * var140003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var140003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4808 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4829 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4844 = mem[_4829]
                        require mem[_4829] == mem[_4829 + 12 len 20]
                        require ext_code.size(address(_4808))
                        staticcall address(_4808).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4917 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4928 = mem[_4917]
                        require mem[_4917] == mem[_4917 + 12 len 20]
                        if address(_4844) == wethAddress:
                            if mem[_4917 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = mem[_4917 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_4844)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4928) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_4928)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4788 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4828 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257
                    u = mem[64] + 96
                    while idx < _4828:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5428 = mem[64]
                    mem[mem[64]] = _4788 + (32 * _4828) + -mem[64] + 64
                    mem[64] = _4788 + (32 * _4828) + 96
                    mem[_5428 + 64] = t
                    _5429 = mem[_5428]
                    require mem[_5428] >= 32
                    _5444 = mem[_5428 + 32]
                    require mem[_5428 + 32] <= test266151307()
                    require _5428 + mem[_5428 + 32] + 63 < _5428 + mem[_5428] + 32
                    _5452 = mem[_5428 + mem[_5428 + 32] + 32]
                    if mem[_5428 + mem[_5428 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4788 + (32 * _4828) + floor32(mem[_5428 + mem[_5428 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5428 + mem[_5428 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4788 + (32 * _4828) + floor32(mem[_5428 + mem[_5428 + 32] + 32]) + 97
                    mem[_4788 + (32 * _4828) + 96] = _5452
                    require _5444 + (32 * _5452) + 64 <= _5429 + 32
                    idx = 0
                    s = _5428 + _5444 + 64
                    t = _4788 + (32 * _4828) + 128
                    while idx < _5452:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5940 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5452
                    idx = 0
                    s = _4788 + (32 * _4828) + 128
                    t = mem[64] + 68
                    while idx < _5452:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5940 + (32 * _5452) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6412 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6420 = mem[_6412]
                    require mem[_6412] <= test266151307()
                    require _6412 + mem[_6412] + 31 < _6412 + return_data.size
                    _6434 = mem[_6412 + mem[_6412]]
                    if mem[_6412 + mem[_6412]] > test266151307():
                        revert with 'NH{q', 65
                    if _6412 + ceil32(return_data.size) + floor32(mem[_6412 + mem[_6412]]) + 1 > test266151307() or floor32(mem[_6412 + mem[_6412]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6412 + ceil32(return_data.size) + floor32(mem[_6412 + mem[_6412]]) + 1
                    mem[_6412 + ceil32(return_data.size)] = _6434
                    require _6420 + (32 * _6434) + 32 <= return_data.size
                    idx = 0
                    s = _6412 + _6420 + 32
                    t = _6412 + ceil32(return_data.size) + 32
                    while idx < _6434:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6844 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6434
                    idx = 0
                    s = _6412 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6434:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6844 + (32 * _6434) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257 len 32 * (2 * var140003) + 1] = call.data[calldata.size len 32 * (2 * var140003) + 1]
                if 0 >= (2 * var140003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var140003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4811 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4831 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4845 = mem[_4831]
                    require mem[_4831] == mem[_4831 + 12 len 20]
                    require ext_code.size(address(_4811))
                    staticcall address(_4811).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4919 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4929 = mem[_4919]
                    require mem[_4919] == mem[_4919 + 12 len 20]
                    if address(_4845) == wethAddress:
                        if mem[_4919 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = mem[_4919 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_4845)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4929) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_4929)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4790 = mem[64]
                mem[mem[64] + 32] = 32
                _4830 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257
                u = mem[64] + 96
                while idx < _4830:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5430 = mem[64]
                mem[mem[64]] = _4790 + (32 * _4830) + -mem[64] + 64
                mem[64] = _4790 + (32 * _4830) + 96
                mem[_5430 + 64] = t
                _5431 = mem[_5430]
                require mem[_5430] >= 32
                _5445 = mem[_5430 + 32]
                require mem[_5430 + 32] <= test266151307()
                require _5430 + mem[_5430 + 32] + 63 < _5430 + mem[_5430] + 32
                _5453 = mem[_5430 + mem[_5430 + 32] + 32]
                if mem[_5430 + mem[_5430 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4790 + (32 * _4830) + floor32(mem[_5430 + mem[_5430 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5430 + mem[_5430 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4790 + (32 * _4830) + floor32(mem[_5430 + mem[_5430 + 32] + 32]) + 97
                mem[_4790 + (32 * _4830) + 96] = _5453
                require _5445 + (32 * _5453) + 64 <= _5431 + 32
                idx = 0
                s = _5430 + _5445 + 64
                t = _4790 + (32 * _4830) + 128
                while idx < _5453:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5941 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5453
                idx = 0
                s = _4790 + (32 * _4830) + 128
                t = mem[64] + 68
                while idx < _5453:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5941 + (32 * _5453) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6413 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6421 = mem[_6413]
                require mem[_6413] <= test266151307()
                require _6413 + mem[_6413] + 31 < _6413 + return_data.size
                _6435 = mem[_6413 + mem[_6413]]
                if mem[_6413 + mem[_6413]] > test266151307():
                    revert with 'NH{q', 65
                if _6413 + ceil32(return_data.size) + floor32(mem[_6413 + mem[_6413]]) + 1 > test266151307() or floor32(mem[_6413 + mem[_6413]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6413 + ceil32(return_data.size) + floor32(mem[_6413 + mem[_6413]]) + 1
                mem[_6413 + ceil32(return_data.size)] = _6435
                require _6421 + (32 * _6435) + 32 <= return_data.size
                idx = 0
                s = _6413 + _6421 + 32
                t = _6413 + ceil32(return_data.size) + 32
                while idx < _6435:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6845 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6435
                idx = 0
                s = _6413 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6435:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6845 + (32 * _6435) + -mem[64] + 64
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
                    if 0 >= (2 * var141003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var141003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4814 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4833 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4846 = mem[_4833]
                        require mem[_4833] == mem[_4833 + 12 len 20]
                        require ext_code.size(address(_4814))
                        staticcall address(_4814).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4921 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4930 = mem[_4921]
                        require mem[_4921] == mem[_4921 + 12 len 20]
                        if address(_4846) == wethAddress:
                            if mem[_4921 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = mem[_4921 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_4846)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4930) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_4930)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4792 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4832 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257
                    u = mem[64] + 96
                    while idx < _4832:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5432 = mem[64]
                    mem[mem[64]] = _4792 + (32 * _4832) + -mem[64] + 64
                    mem[64] = _4792 + (32 * _4832) + 96
                    mem[_5432 + 64] = t
                    _5433 = mem[_5432]
                    require mem[_5432] >= 32
                    _5446 = mem[_5432 + 32]
                    require mem[_5432 + 32] <= test266151307()
                    require _5432 + mem[_5432 + 32] + 63 < _5432 + mem[_5432] + 32
                    _5454 = mem[_5432 + mem[_5432 + 32] + 32]
                    if mem[_5432 + mem[_5432 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4792 + (32 * _4832) + floor32(mem[_5432 + mem[_5432 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5432 + mem[_5432 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4792 + (32 * _4832) + floor32(mem[_5432 + mem[_5432 + 32] + 32]) + 97
                    mem[_4792 + (32 * _4832) + 96] = _5454
                    require _5446 + (32 * _5454) + 64 <= _5433 + 32
                    idx = 0
                    s = _5432 + _5446 + 64
                    t = _4792 + (32 * _4832) + 128
                    while idx < _5454:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5942 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5454
                    idx = 0
                    s = _4792 + (32 * _4832) + 128
                    t = mem[64] + 68
                    while idx < _5454:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5942 + (32 * _5454) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6414 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6422 = mem[_6414]
                    require mem[_6414] <= test266151307()
                    require _6414 + mem[_6414] + 31 < _6414 + return_data.size
                    _6437 = mem[_6414 + mem[_6414]]
                    if mem[_6414 + mem[_6414]] > test266151307():
                        revert with 'NH{q', 65
                    if _6414 + ceil32(return_data.size) + floor32(mem[_6414 + mem[_6414]]) + 1 > test266151307() or floor32(mem[_6414 + mem[_6414]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6414 + ceil32(return_data.size) + floor32(mem[_6414 + mem[_6414]]) + 1
                    mem[_6414 + ceil32(return_data.size)] = _6437
                    require _6422 + (32 * _6437) + 32 <= return_data.size
                    idx = 0
                    s = _6414 + _6422 + 32
                    t = _6414 + ceil32(return_data.size) + 32
                    while idx < _6437:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6846 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6437
                    idx = 0
                    s = _6414 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6437:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6846 + (32 * _6437) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257 len 32 * (2 * var141003) + 1] = call.data[calldata.size len 32 * (2 * var141003) + 1]
                if 0 >= (2 * var141003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var141003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4817 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4835 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4847 = mem[_4835]
                    require mem[_4835] == mem[_4835 + 12 len 20]
                    require ext_code.size(address(_4817))
                    staticcall address(_4817).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4923 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4931 = mem[_4923]
                    require mem[_4923] == mem[_4923 + 12 len 20]
                    if address(_4847) == wethAddress:
                        if mem[_4923 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = mem[_4923 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_4847)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4931) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_4931)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4794 = mem[64]
                mem[mem[64] + 32] = 32
                _4834 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257
                u = mem[64] + 96
                while idx < _4834:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5434 = mem[64]
                mem[mem[64]] = _4794 + (32 * _4834) + -mem[64] + 64
                mem[64] = _4794 + (32 * _4834) + 96
                mem[_5434 + 64] = t
                _5435 = mem[_5434]
                require mem[_5434] >= 32
                _5447 = mem[_5434 + 32]
                require mem[_5434 + 32] <= test266151307()
                require _5434 + mem[_5434 + 32] + 63 < _5434 + mem[_5434] + 32
                _5455 = mem[_5434 + mem[_5434 + 32] + 32]
                if mem[_5434 + mem[_5434 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4794 + (32 * _4834) + floor32(mem[_5434 + mem[_5434 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5434 + mem[_5434 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4794 + (32 * _4834) + floor32(mem[_5434 + mem[_5434 + 32] + 32]) + 97
                mem[_4794 + (32 * _4834) + 96] = _5455
                require _5447 + (32 * _5455) + 64 <= _5435 + 32
                idx = 0
                s = _5434 + _5447 + 64
                t = _4794 + (32 * _4834) + 128
                while idx < _5455:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5943 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5455
                idx = 0
                s = _4794 + (32 * _4834) + 128
                t = mem[64] + 68
                while idx < _5455:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5943 + (32 * _5455) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6415 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6423 = mem[_6415]
                require mem[_6415] <= test266151307()
                require _6415 + mem[_6415] + 31 < _6415 + return_data.size
                _6438 = mem[_6415 + mem[_6415]]
                if mem[_6415 + mem[_6415]] > test266151307():
                    revert with 'NH{q', 65
                if _6415 + ceil32(return_data.size) + floor32(mem[_6415 + mem[_6415]]) + 1 > test266151307() or floor32(mem[_6415 + mem[_6415]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6415 + ceil32(return_data.size) + floor32(mem[_6415 + mem[_6415]]) + 1
                mem[_6415 + ceil32(return_data.size)] = _6438
                require _6423 + (32 * _6438) + 32 <= return_data.size
                idx = 0
                s = _6415 + _6423 + 32
                t = _6415 + ceil32(return_data.size) + 32
                while idx < _6438:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6847 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6438
                idx = 0
                s = _6415 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6438:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6847 + (32 * _6438) + -mem[64] + 64
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
                    if 0 >= (2 * var132003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var132003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4800 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4825 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4844 = mem[_4825]
                        require mem[_4825] == mem[_4825 + 12 len 20]
                        require ext_code.size(address(_4800))
                        staticcall address(_4800).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4913 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4928 = mem[_4913]
                        require mem[_4913] == mem[_4913 + 12 len 20]
                        if address(_4844) == wethAddress:
                            if mem[_4913 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = mem[_4913 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_4844)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4928) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_4928)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4784 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4824 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257
                    u = mem[64] + 96
                    while idx < _4824:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5424 = mem[64]
                    mem[mem[64]] = _4784 + (32 * _4824) + -mem[64] + 64
                    mem[64] = _4784 + (32 * _4824) + 96
                    mem[_5424 + 64] = t
                    _5425 = mem[_5424]
                    require mem[_5424] >= 32
                    _5444 = mem[_5424 + 32]
                    require mem[_5424 + 32] <= test266151307()
                    require _5424 + mem[_5424 + 32] + 63 < _5424 + mem[_5424] + 32
                    _5452 = mem[_5424 + mem[_5424 + 32] + 32]
                    if mem[_5424 + mem[_5424 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4784 + (32 * _4824) + floor32(mem[_5424 + mem[_5424 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5424 + mem[_5424 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4784 + (32 * _4824) + floor32(mem[_5424 + mem[_5424 + 32] + 32]) + 97
                    mem[_4784 + (32 * _4824) + 96] = _5452
                    require _5444 + (32 * _5452) + 64 <= _5425 + 32
                    idx = 0
                    s = _5424 + _5444 + 64
                    t = _4784 + (32 * _4824) + 128
                    while idx < _5452:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5940 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5452
                    idx = 0
                    s = _4784 + (32 * _4824) + 128
                    t = mem[64] + 68
                    while idx < _5452:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5940 + (32 * _5452) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6412 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6420 = mem[_6412]
                    require mem[_6412] <= test266151307()
                    require _6412 + mem[_6412] + 31 < _6412 + return_data.size
                    _6432 = mem[_6412 + mem[_6412]]
                    if mem[_6412 + mem[_6412]] > test266151307():
                        revert with 'NH{q', 65
                    if _6412 + ceil32(return_data.size) + floor32(mem[_6412 + mem[_6412]]) + 1 > test266151307() or floor32(mem[_6412 + mem[_6412]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6412 + ceil32(return_data.size) + floor32(mem[_6412 + mem[_6412]]) + 1
                    mem[_6412 + ceil32(return_data.size)] = _6432
                    require _6420 + (32 * _6432) + 32 <= return_data.size
                    idx = 0
                    s = _6412 + _6420 + 32
                    t = _6412 + ceil32(return_data.size) + 32
                    while idx < _6432:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6844 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6432
                    idx = 0
                    s = _6412 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6432:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6844 + (32 * _6432) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257 len 32 * (2 * var132003) + 1] = call.data[calldata.size len 32 * (2 * var132003) + 1]
                if 0 >= (2 * var132003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var132003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4803 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4827 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4845 = mem[_4827]
                    require mem[_4827] == mem[_4827 + 12 len 20]
                    require ext_code.size(address(_4803))
                    staticcall address(_4803).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4915 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4929 = mem[_4915]
                    require mem[_4915] == mem[_4915 + 12 len 20]
                    if address(_4845) == wethAddress:
                        if mem[_4915 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = mem[_4915 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_4845)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4929) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257] = address(_4929)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4786 = mem[64]
                mem[mem[64] + 32] = 32
                _4826 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var132003) + 257
                u = mem[64] + 96
                while idx < _4826:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5426 = mem[64]
                mem[mem[64]] = _4786 + (32 * _4826) + -mem[64] + 64
                mem[64] = _4786 + (32 * _4826) + 96
                mem[_5426 + 64] = t
                _5427 = mem[_5426]
                require mem[_5426] >= 32
                _5445 = mem[_5426 + 32]
                require mem[_5426 + 32] <= test266151307()
                require _5426 + mem[_5426 + 32] + 63 < _5426 + mem[_5426] + 32
                _5453 = mem[_5426 + mem[_5426 + 32] + 32]
                if mem[_5426 + mem[_5426 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4786 + (32 * _4826) + floor32(mem[_5426 + mem[_5426 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5426 + mem[_5426 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4786 + (32 * _4826) + floor32(mem[_5426 + mem[_5426 + 32] + 32]) + 97
                mem[_4786 + (32 * _4826) + 96] = _5453
                require _5445 + (32 * _5453) + 64 <= _5427 + 32
                idx = 0
                s = _5426 + _5445 + 64
                t = _4786 + (32 * _4826) + 128
                while idx < _5453:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5941 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5453
                idx = 0
                s = _4786 + (32 * _4826) + 128
                t = mem[64] + 68
                while idx < _5453:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5941 + (32 * _5453) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6413 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6421 = mem[_6413]
                require mem[_6413] <= test266151307()
                require _6413 + mem[_6413] + 31 < _6413 + return_data.size
                _6433 = mem[_6413 + mem[_6413]]
                if mem[_6413 + mem[_6413]] > test266151307():
                    revert with 'NH{q', 65
                if _6413 + ceil32(return_data.size) + floor32(mem[_6413 + mem[_6413]]) + 1 > test266151307() or floor32(mem[_6413 + mem[_6413]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6413 + ceil32(return_data.size) + floor32(mem[_6413 + mem[_6413]]) + 1
                mem[_6413 + ceil32(return_data.size)] = _6433
                require _6421 + (32 * _6433) + 32 <= return_data.size
                idx = 0
                s = _6413 + _6421 + 32
                t = _6413 + ceil32(return_data.size) + 32
                while idx < _6433:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6845 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6433
                idx = 0
                s = _6413 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6433:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6845 + (32 * _6433) + -mem[64] + 64
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
                    if 0 >= (2 * var133003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var133003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4806 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4829 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4846 = mem[_4829]
                        require mem[_4829] == mem[_4829 + 12 len 20]
                        require ext_code.size(address(_4806))
                        staticcall address(_4806).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4917 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4930 = mem[_4917]
                        require mem[_4917] == mem[_4917 + 12 len 20]
                        if address(_4846) == wethAddress:
                            if mem[_4917 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = mem[_4917 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_4846)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4930) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_4930)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4788 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4828 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257
                    u = mem[64] + 96
                    while idx < _4828:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5428 = mem[64]
                    mem[mem[64]] = _4788 + (32 * _4828) + -mem[64] + 64
                    mem[64] = _4788 + (32 * _4828) + 96
                    mem[_5428 + 64] = t
                    _5429 = mem[_5428]
                    require mem[_5428] >= 32
                    _5446 = mem[_5428 + 32]
                    require mem[_5428 + 32] <= test266151307()
                    require _5428 + mem[_5428 + 32] + 63 < _5428 + mem[_5428] + 32
                    _5454 = mem[_5428 + mem[_5428 + 32] + 32]
                    if mem[_5428 + mem[_5428 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4788 + (32 * _4828) + floor32(mem[_5428 + mem[_5428 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5428 + mem[_5428 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4788 + (32 * _4828) + floor32(mem[_5428 + mem[_5428 + 32] + 32]) + 97
                    mem[_4788 + (32 * _4828) + 96] = _5454
                    require _5446 + (32 * _5454) + 64 <= _5429 + 32
                    idx = 0
                    s = _5428 + _5446 + 64
                    t = _4788 + (32 * _4828) + 128
                    while idx < _5454:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5942 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5454
                    idx = 0
                    s = _4788 + (32 * _4828) + 128
                    t = mem[64] + 68
                    while idx < _5454:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5942 + (32 * _5454) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6414 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6422 = mem[_6414]
                    require mem[_6414] <= test266151307()
                    require _6414 + mem[_6414] + 31 < _6414 + return_data.size
                    _6435 = mem[_6414 + mem[_6414]]
                    if mem[_6414 + mem[_6414]] > test266151307():
                        revert with 'NH{q', 65
                    if _6414 + ceil32(return_data.size) + floor32(mem[_6414 + mem[_6414]]) + 1 > test266151307() or floor32(mem[_6414 + mem[_6414]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6414 + ceil32(return_data.size) + floor32(mem[_6414 + mem[_6414]]) + 1
                    mem[_6414 + ceil32(return_data.size)] = _6435
                    require _6422 + (32 * _6435) + 32 <= return_data.size
                    idx = 0
                    s = _6414 + _6422 + 32
                    t = _6414 + ceil32(return_data.size) + 32
                    while idx < _6435:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6846 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6435
                    idx = 0
                    s = _6414 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6435:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6846 + (32 * _6435) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257 len 32 * (2 * var133003) + 1] = call.data[calldata.size len 32 * (2 * var133003) + 1]
                if 0 >= (2 * var133003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var133003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4809 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4831 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4847 = mem[_4831]
                    require mem[_4831] == mem[_4831 + 12 len 20]
                    require ext_code.size(address(_4809))
                    staticcall address(_4809).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4919 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4931 = mem[_4919]
                    require mem[_4919] == mem[_4919 + 12 len 20]
                    if address(_4847) == wethAddress:
                        if mem[_4919 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = mem[_4919 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_4847)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4931) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257] = address(_4931)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4790 = mem[64]
                mem[mem[64] + 32] = 32
                _4830 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var133003) + 257
                u = mem[64] + 96
                while idx < _4830:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5430 = mem[64]
                mem[mem[64]] = _4790 + (32 * _4830) + -mem[64] + 64
                mem[64] = _4790 + (32 * _4830) + 96
                mem[_5430 + 64] = t
                _5431 = mem[_5430]
                require mem[_5430] >= 32
                _5447 = mem[_5430 + 32]
                require mem[_5430 + 32] <= test266151307()
                require _5430 + mem[_5430 + 32] + 63 < _5430 + mem[_5430] + 32
                _5455 = mem[_5430 + mem[_5430 + 32] + 32]
                if mem[_5430 + mem[_5430 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4790 + (32 * _4830) + floor32(mem[_5430 + mem[_5430 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5430 + mem[_5430 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4790 + (32 * _4830) + floor32(mem[_5430 + mem[_5430 + 32] + 32]) + 97
                mem[_4790 + (32 * _4830) + 96] = _5455
                require _5447 + (32 * _5455) + 64 <= _5431 + 32
                idx = 0
                s = _5430 + _5447 + 64
                t = _4790 + (32 * _4830) + 128
                while idx < _5455:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5943 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5455
                idx = 0
                s = _4790 + (32 * _4830) + 128
                t = mem[64] + 68
                while idx < _5455:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5943 + (32 * _5455) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6415 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6423 = mem[_6415]
                require mem[_6415] <= test266151307()
                require _6415 + mem[_6415] + 31 < _6415 + return_data.size
                _6436 = mem[_6415 + mem[_6415]]
                if mem[_6415 + mem[_6415]] > test266151307():
                    revert with 'NH{q', 65
                if _6415 + ceil32(return_data.size) + floor32(mem[_6415 + mem[_6415]]) + 1 > test266151307() or floor32(mem[_6415 + mem[_6415]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6415 + ceil32(return_data.size) + floor32(mem[_6415 + mem[_6415]]) + 1
                mem[_6415 + ceil32(return_data.size)] = _6436
                require _6423 + (32 * _6436) + 32 <= return_data.size
                idx = 0
                s = _6415 + _6423 + 32
                t = _6415 + ceil32(return_data.size) + 32
                while idx < _6436:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6847 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6436
                idx = 0
                s = _6415 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6436:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6847 + (32 * _6436) + -mem[64] + 64
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
                    if 0 >= (2 * var140003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var140003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4812 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4833 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4848 = mem[_4833]
                        require mem[_4833] == mem[_4833 + 12 len 20]
                        require ext_code.size(address(_4812))
                        staticcall address(_4812).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4921 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4932 = mem[_4921]
                        require mem[_4921] == mem[_4921 + 12 len 20]
                        if address(_4848) == wethAddress:
                            if mem[_4921 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = mem[_4921 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_4848)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4932) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_4932)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4792 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4832 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257
                    u = mem[64] + 96
                    while idx < _4832:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5432 = mem[64]
                    mem[mem[64]] = _4792 + (32 * _4832) + -mem[64] + 64
                    mem[64] = _4792 + (32 * _4832) + 96
                    mem[_5432 + 64] = t
                    _5433 = mem[_5432]
                    require mem[_5432] >= 32
                    _5448 = mem[_5432 + 32]
                    require mem[_5432 + 32] <= test266151307()
                    require _5432 + mem[_5432 + 32] + 63 < _5432 + mem[_5432] + 32
                    _5456 = mem[_5432 + mem[_5432 + 32] + 32]
                    if mem[_5432 + mem[_5432 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4792 + (32 * _4832) + floor32(mem[_5432 + mem[_5432 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5432 + mem[_5432 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4792 + (32 * _4832) + floor32(mem[_5432 + mem[_5432 + 32] + 32]) + 97
                    mem[_4792 + (32 * _4832) + 96] = _5456
                    require _5448 + (32 * _5456) + 64 <= _5433 + 32
                    idx = 0
                    s = _5432 + _5448 + 64
                    t = _4792 + (32 * _4832) + 128
                    while idx < _5456:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5944 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5456
                    idx = 0
                    s = _4792 + (32 * _4832) + 128
                    t = mem[64] + 68
                    while idx < _5456:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5944 + (32 * _5456) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6416 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6424 = mem[_6416]
                    require mem[_6416] <= test266151307()
                    require _6416 + mem[_6416] + 31 < _6416 + return_data.size
                    _6438 = mem[_6416 + mem[_6416]]
                    if mem[_6416 + mem[_6416]] > test266151307():
                        revert with 'NH{q', 65
                    if _6416 + ceil32(return_data.size) + floor32(mem[_6416 + mem[_6416]]) + 1 > test266151307() or floor32(mem[_6416 + mem[_6416]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6416 + ceil32(return_data.size) + floor32(mem[_6416 + mem[_6416]]) + 1
                    mem[_6416 + ceil32(return_data.size)] = _6438
                    require _6424 + (32 * _6438) + 32 <= return_data.size
                    idx = 0
                    s = _6416 + _6424 + 32
                    t = _6416 + ceil32(return_data.size) + 32
                    while idx < _6438:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6848 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6438
                    idx = 0
                    s = _6416 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6438:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6848 + (32 * _6438) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257 len 32 * (2 * var140003) + 1] = call.data[calldata.size len 32 * (2 * var140003) + 1]
                if 0 >= (2 * var140003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var140003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4815 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4835 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4849 = mem[_4835]
                    require mem[_4835] == mem[_4835 + 12 len 20]
                    require ext_code.size(address(_4815))
                    staticcall address(_4815).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4923 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4933 = mem[_4923]
                    require mem[_4923] == mem[_4923 + 12 len 20]
                    if address(_4849) == wethAddress:
                        if mem[_4923 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = mem[_4923 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_4849)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4933) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257] = address(_4933)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4794 = mem[64]
                mem[mem[64] + 32] = 32
                _4834 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var140003) + 257
                u = mem[64] + 96
                while idx < _4834:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5434 = mem[64]
                mem[mem[64]] = _4794 + (32 * _4834) + -mem[64] + 64
                mem[64] = _4794 + (32 * _4834) + 96
                mem[_5434 + 64] = t
                _5435 = mem[_5434]
                require mem[_5434] >= 32
                _5449 = mem[_5434 + 32]
                require mem[_5434 + 32] <= test266151307()
                require _5434 + mem[_5434 + 32] + 63 < _5434 + mem[_5434] + 32
                _5457 = mem[_5434 + mem[_5434 + 32] + 32]
                if mem[_5434 + mem[_5434 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4794 + (32 * _4834) + floor32(mem[_5434 + mem[_5434 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5434 + mem[_5434 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4794 + (32 * _4834) + floor32(mem[_5434 + mem[_5434 + 32] + 32]) + 97
                mem[_4794 + (32 * _4834) + 96] = _5457
                require _5449 + (32 * _5457) + 64 <= _5435 + 32
                idx = 0
                s = _5434 + _5449 + 64
                t = _4794 + (32 * _4834) + 128
                while idx < _5457:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5457
                idx = 0
                s = _4794 + (32 * _4834) + 128
                t = mem[64] + 68
                while idx < _5457:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.uniqueAddresses(address[] rg1) with:
                        gas gas_remaining wei
                       args Array(len=_5457, data=mem[mem[64] + 68 len 32 * _5457])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6417 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6425 = mem[_6417]
                require mem[_6417] <= test266151307()
                require _6417 + mem[_6417] + 31 < _6417 + return_data.size
                _6439 = mem[_6417 + mem[_6417]]
                if mem[_6417 + mem[_6417]] > test266151307():
                    revert with 'NH{q', 65
                if _6417 + ceil32(return_data.size) + floor32(mem[_6417 + mem[_6417]]) + 1 > test266151307() or floor32(mem[_6417 + mem[_6417]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6417 + ceil32(return_data.size) + floor32(mem[_6417 + mem[_6417]]) + 1
                mem[_6417 + ceil32(return_data.size)] = _6439
                require _6425 + (32 * _6439) + 32 <= return_data.size
                idx = 0
                s = _6417 + _6425 + 32
                t = _6417 + ceil32(return_data.size) + 32
                while idx < _6439:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6849 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6439
                idx = 0
                s = _6417 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6439:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6849 + (32 * _6439) + -mem[64] + 64
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
                    if 0 >= (2 * var141003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var141003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4818 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4837 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4850 = mem[_4837]
                        require mem[_4837] == mem[_4837 + 12 len 20]
                        require ext_code.size(address(_4818))
                        staticcall address(_4818).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4925 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4934 = mem[_4925]
                        require mem[_4925] == mem[_4925 + 12 len 20]
                        if address(_4850) == wethAddress:
                            if mem[_4925 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = mem[_4925 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_4850)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4934) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_4934)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4796 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4836 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257
                    u = mem[64] + 96
                    while idx < _4836:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5436 = mem[64]
                    mem[mem[64]] = _4796 + (32 * _4836) + -mem[64] + 64
                    mem[64] = _4796 + (32 * _4836) + 96
                    mem[_5436 + 64] = t
                    _5437 = mem[_5436]
                    require mem[_5436] >= 32
                    _5450 = mem[_5436 + 32]
                    require mem[_5436 + 32] <= test266151307()
                    require _5436 + mem[_5436 + 32] + 63 < _5436 + mem[_5436] + 32
                    _5458 = mem[_5436 + mem[_5436 + 32] + 32]
                    if mem[_5436 + mem[_5436 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4796 + (32 * _4836) + floor32(mem[_5436 + mem[_5436 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5436 + mem[_5436 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4796 + (32 * _4836) + floor32(mem[_5436 + mem[_5436 + 32] + 32]) + 97
                    mem[_4796 + (32 * _4836) + 96] = _5458
                    require _5450 + (32 * _5458) + 64 <= _5437 + 32
                    idx = 0
                    s = _5436 + _5450 + 64
                    t = _4796 + (32 * _4836) + 128
                    while idx < _5458:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5946 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5458
                    idx = 0
                    s = _4796 + (32 * _4836) + 128
                    t = mem[64] + 68
                    while idx < _5458:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor3)
                    staticcall stor3.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5946 + (32 * _5458) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6418 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6426 = mem[_6418]
                    require mem[_6418] <= test266151307()
                    require _6418 + mem[_6418] + 31 < _6418 + return_data.size
                    _6441 = mem[_6418 + mem[_6418]]
                    if mem[_6418 + mem[_6418]] > test266151307():
                        revert with 'NH{q', 65
                    if _6418 + ceil32(return_data.size) + floor32(mem[_6418 + mem[_6418]]) + 1 > test266151307() or floor32(mem[_6418 + mem[_6418]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6418 + ceil32(return_data.size) + floor32(mem[_6418 + mem[_6418]]) + 1
                    mem[_6418 + ceil32(return_data.size)] = _6441
                    require _6426 + (32 * _6441) + 32 <= return_data.size
                    idx = 0
                    s = _6418 + _6426 + 32
                    t = _6418 + ceil32(return_data.size) + 32
                    while idx < _6441:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6850 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6441
                    idx = 0
                    s = _6418 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6441:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6850 + (32 * _6441) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257 len 32 * (2 * var141003) + 1] = call.data[calldata.size len 32 * (2 * var141003) + 1]
                if 0 >= (2 * var141003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var141003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4821 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4839 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4851 = mem[_4839]
                    require mem[_4839] == mem[_4839 + 12 len 20]
                    require ext_code.size(address(_4821))
                    staticcall address(_4821).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4927 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4935 = mem[_4927]
                    require mem[_4927] == mem[_4927 + 12 len 20]
                    if address(_4851) == wethAddress:
                        if mem[_4927 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = mem[_4927 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_4851)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4935) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257] = address(_4935)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4798 = mem[64]
                mem[mem[64] + 32] = 32
                _4838 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var141003) + 257
                u = mem[64] + 96
                while idx < _4838:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5438 = mem[64]
                mem[mem[64]] = _4798 + (32 * _4838) + -mem[64] + 64
                mem[64] = _4798 + (32 * _4838) + 96
                mem[_5438 + 64] = t
                _5439 = mem[_5438]
                require mem[_5438] >= 32
                _5451 = mem[_5438 + 32]
                require mem[_5438 + 32] <= test266151307()
                require _5438 + mem[_5438 + 32] + 63 < _5438 + mem[_5438] + 32
                _5459 = mem[_5438 + mem[_5438 + 32] + 32]
                if mem[_5438 + mem[_5438 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4798 + (32 * _4838) + floor32(mem[_5438 + mem[_5438 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5438 + mem[_5438 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4798 + (32 * _4838) + floor32(mem[_5438 + mem[_5438 + 32] + 32]) + 97
                mem[_4798 + (32 * _4838) + 96] = _5459
                require _5451 + (32 * _5459) + 64 <= _5439 + 32
                idx = 0
                s = _5438 + _5451 + 64
                t = _4798 + (32 * _4838) + 128
                while idx < _5459:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5947 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5459
                idx = 0
                s = _4798 + (32 * _4838) + 128
                t = mem[64] + 68
                while idx < _5459:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5947 + (32 * _5459) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6419 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6427 = mem[_6419]
                require mem[_6419] <= test266151307()
                require _6419 + mem[_6419] + 31 < _6419 + return_data.size
                _6442 = mem[_6419 + mem[_6419]]
                if mem[_6419 + mem[_6419]] > test266151307():
                    revert with 'NH{q', 65
                if _6419 + ceil32(return_data.size) + floor32(mem[_6419 + mem[_6419]]) + 1 > test266151307() or floor32(mem[_6419 + mem[_6419]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6419 + ceil32(return_data.size) + floor32(mem[_6419 + mem[_6419]]) + 1
                mem[_6419 + ceil32(return_data.size)] = _6442
                require _6427 + (32 * _6442) + 32 <= return_data.size
                idx = 0
                s = _6419 + _6427 + 32
                t = _6419 + ceil32(return_data.size) + 32
                while idx < _6442:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6851 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6442
                idx = 0
                s = _6419 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6442:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6851 + (32 * _6442) + -mem[64] + 64
}



}
