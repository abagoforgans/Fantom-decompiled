contract main {




// =====================  Runtime code  =====================


#
#  - sub_edc6d2c1(?)
#
address wethAddress;
address factoryAddress;
address routerAddress;
address uniqueAddressesHelperAddress;
address stor4;
address stor6;

function routerAddress() payable {
    return routerAddress
}

function wethAddress() payable {
    return wethAddress
}

function uniqueAddressesHelperAddress() payable {
    return uniqueAddressesHelperAddress
}

function factoryAddress() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function pairsLength() payable {
    require ext_code.size(stor4)
    staticcall stor4.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_e76c78da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor4)
    staticcall stor4.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not arg1:
        revert with 'NH{q', 18
    if ext_call.return_data[0] / arg1 > -2:
        revert with 'NH{q', 17
    return ((ext_call.return_data[0] / arg1) + 1)
}

function sub_272d6db2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor4)
    staticcall stor4.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if ext_call.return_data[0] - arg2 / arg1 > -2:
        revert with 'NH{q', 17
    return ((ext_call.return_data[0] - arg2 / arg1) + 1)
}

function sub_7f3d84bb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor4)
    staticcall stor4.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and arg1 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * arg1 > -1:
        revert with 'NH{q', 17
    if arg2 * arg1 > -arg1 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if (arg2 * arg1) + arg1 <= ext_call.return_data[0] - 1:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var116003 > (-1 * arg2 * arg1) - 1:
                revert with 'NH{q', 17
            if var120001 <= (arg2 * arg1) + arg1:
                if var132003 > (-1 * arg2 * arg1) - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var120003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var120003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var120003) + 225 > test266151307() or floor32(var120003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var120003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var120003
                require 32 * var120003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var120003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var120003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var120003) + 257] = var120003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var120003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var120003) + (32 * var120003) + -mem[64] + 289
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var117003 > (-1 * arg2 * arg1) - 1:
                revert with 'NH{q', 17
            if var121001 <= (arg2 * arg1) + arg1:
                if var133003 > (-1 * arg2 * arg1) - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var121003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var121003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225 > test266151307() or floor32(var121003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var121003
                require 32 * var121003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var121003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257] = var121003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var121003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + (32 * var121003) + -mem[64] + 289
    else:
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var124003 > (-1 * arg2 * arg1) - 1:
                revert with 'NH{q', 17
            if var128001 <= ext_call.return_data[0] - 1:
                if var140003 > (-1 * arg2 * arg1) - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var128003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var128003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var128003) + 225 > test266151307() or floor32(var128003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var128003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var128003
                require 32 * var128003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var128003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var128003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var128003) + 257] = var128003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var128003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var128003) + (32 * var128003) + -mem[64] + 289
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var125003 > (-1 * arg2 * arg1) - 1:
                revert with 'NH{q', 17
            if var129001 <= ext_call.return_data[0] - 1:
                if var141003 > (-1 * arg2 * arg1) - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var129003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var129003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225 > test266151307() or floor32(var129003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var129003
                require 32 * var129003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var129003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257] = var129003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var129003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + (32 * var129003) + -mem[64] + 289
}

function sub_4e859096(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(stor4)
    staticcall stor4.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and arg1 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * arg1 > -arg3 - 1:
        revert with 'NH{q', 17
    if (arg2 * arg1) + arg3 > -arg1 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if (arg2 * arg1) + arg3 + arg1 <= ext_call.return_data[0] - 1:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var122003 > (-1 * arg2 * arg1) + -arg3 - 1:
                revert with 'NH{q', 17
            if var126001 <= (arg2 * arg1) + arg3 + arg1:
                if var138003 > (-1 * arg2 * arg1) + -arg3 - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var126003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var126003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var126003) + 225 > test266151307() or floor32(var126003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var126003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var126003
                require 32 * var126003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var126003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var126003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var126003) + 257] = var126003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var126003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var126003) + (32 * var126003) + -mem[64] + 289
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var123003 > (-1 * arg2 * arg1) + -arg3 - 1:
                revert with 'NH{q', 17
            if var127001 <= (arg2 * arg1) + arg3 + arg1:
                if var139003 > (-1 * arg2 * arg1) + -arg3 - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var127003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var127003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var127003) + 225 > test266151307() or floor32(var127003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var127003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var127003
                require 32 * var127003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var127003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var127003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var127003) + 257] = var127003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var127003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var127003) + (32 * var127003) + -mem[64] + 289
    else:
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var130003 > (-1 * arg2 * arg1) + -arg3 - 1:
                revert with 'NH{q', 17
            if var134001 <= ext_call.return_data[0] - 1:
                if var146003 > (-1 * arg2 * arg1) + -arg3 - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var134003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var134003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var134003) + 225 > test266151307() or floor32(var134003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var134003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var134003
                require 32 * var134003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var134003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var134003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var134003) + 257] = var134003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var134003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var134003) + (32 * var134003) + -mem[64] + 289
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var131003 > (-1 * arg2 * arg1) + -arg3 - 1:
                revert with 'NH{q', 17
            if var135001 <= ext_call.return_data[0] - 1:
                if var147003 > (-1 * arg2 * arg1) + -arg3 - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var135003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var135003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var135003) + 225 > test266151307() or floor32(var135003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var135003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var135003
                require 32 * var135003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var135003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var135003) + 225] = 32
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var135003) + 257] = var135003
                s = 0
                t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var135003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var135003) + (32 * var135003) + -mem[64] + 289
}

function sub_4fce256f(?) payable {
    require ext_code.size(stor4)
    staticcall stor4.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.allPairsLength() with:
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
            if var111003 > -1:
                revert with 'NH{q', 17
            if var115001 <= ext_call.return_data[0]:
                if var127003 > -1:
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
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var115003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var115003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var115003) + 225 > test266151307() or floor32(var115003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var115003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var115003
                require 32 * var115003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var115003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var115003) + 225] = 32
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var115003) + 257] = var115003
                s = 0
                t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var115003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var115003) + (32 * var115003) + -mem[64] + 289
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var112003 > -1:
                revert with 'NH{q', 17
            if var116001 <= ext_call.return_data[0]:
                if var128003 > -1:
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
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var116003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var116003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225 > test266151307() or floor32(var116003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var116003
                require 32 * var116003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var116003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225] = 32
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257] = var116003
                s = 0
                t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var116003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + (32 * var116003) + -mem[64] + 289
    else:
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var119003 > -1:
                revert with 'NH{q', 17
            if var123001 <= ext_call.return_data[0] - 1:
                if var135003 > -1:
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
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var123003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var123003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var123003) + 225 > test266151307() or floor32(var123003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var123003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var123003
                require 32 * var123003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var123003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var123003) + 225] = 32
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var123003) + 257] = var123003
                s = 0
                t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var123003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var123003) + (32 * var123003) + -mem[64] + 289
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var120003 > -1:
                revert with 'NH{q', 17
            if var124001 <= ext_call.return_data[0] - 1:
                if var136003 > -1:
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
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var124003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var124003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225 > test266151307() or floor32(var124003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var124003
                require 32 * var124003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var124003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225] = 32
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257] = var124003
                s = 0
                t = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                u = mem[64] + 64
                while s < var124003:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + (32 * var124003) + -mem[64] + 289
}

function sub_b6745c34(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor4)
    staticcall stor4.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and arg1 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * arg1 > -1:
        revert with 'NH{q', 17
    if arg2 * arg1 > -arg1 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    if (arg2 * arg1) + arg1 <= ext_call.return_data[0] - 1:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var117003 > (-1 * arg2 * arg1) - 1:
                revert with 'NH{q', 17
            if var121001 <= (arg2 * arg1) + arg1:
                if var133003 > (-1 * arg2 * arg1) - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var121003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var121003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225 > test266151307() or floor32(var121003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var121003
                require 32 * var121003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var121003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var121003 and 2 > -1 / var121003:
                    revert with 'NH{q', 17
                if 2 * var121003 > -2:
                    revert with 'NH{q', 17
                if (2 * var121003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225] = (2 * var121003) + 1
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + (32 * (2 * var121003) + 1) + 257
                if not (2 * var121003) + 1:
                    if 0 >= (2 * var121003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var121003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4811 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4836 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4855 = mem[_4836]
                        require mem[_4836] == mem[_4836 + 12 len 20]
                        require ext_code.size(address(_4811))
                        staticcall address(_4811).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4924 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4939 = mem[_4924]
                        require mem[_4924] == mem[_4924 + 12 len 20]
                        if address(_4855) == wethAddress:
                            if mem[_4924 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257] = mem[_4924 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257] = address(_4855)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4939) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257] = address(_4939)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4795 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4835 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257
                    u = mem[64] + 96
                    while idx < _4835:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5435 = mem[64]
                    mem[mem[64]] = _4795 + (32 * _4835) + -mem[64] + 64
                    mem[64] = _4795 + (32 * _4835) + 96
                    mem[_5435 + 64] = t
                    _5436 = mem[_5435]
                    require mem[_5435] >= 32
                    _5455 = mem[_5435 + 32]
                    require mem[_5435 + 32] <= test266151307()
                    require _5435 + mem[_5435 + 32] + 63 < _5435 + mem[_5435] + 32
                    _5463 = mem[_5435 + mem[_5435 + 32] + 32]
                    if mem[_5435 + mem[_5435 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4795 + (32 * _4835) + floor32(mem[_5435 + mem[_5435 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5435 + mem[_5435 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4795 + (32 * _4835) + floor32(mem[_5435 + mem[_5435 + 32] + 32]) + 97
                    mem[_4795 + (32 * _4835) + 96] = _5463
                    require _5455 + (32 * _5463) + 64 <= _5436 + 32
                    idx = 0
                    s = _5435 + _5455 + 64
                    t = _4795 + (32 * _4835) + 128
                    while idx < _5463:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5951 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5463
                    idx = 0
                    s = _4795 + (32 * _4835) + 128
                    t = mem[64] + 68
                    while idx < _5463:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5951 + (32 * _5463) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6423 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6431 = mem[_6423]
                    require mem[_6423] <= test266151307()
                    require _6423 + mem[_6423] + 31 < _6423 + return_data.size
                    _6443 = mem[_6423 + mem[_6423]]
                    if mem[_6423 + mem[_6423]] > test266151307():
                        revert with 'NH{q', 65
                    if _6423 + ceil32(return_data.size) + floor32(mem[_6423 + mem[_6423]]) + 1 > test266151307() or floor32(mem[_6423 + mem[_6423]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6423 + ceil32(return_data.size) + floor32(mem[_6423 + mem[_6423]]) + 1
                    mem[_6423 + ceil32(return_data.size)] = _6443
                    require _6431 + (32 * _6443) + 32 <= return_data.size
                    idx = 0
                    s = _6423 + _6431 + 32
                    t = _6423 + ceil32(return_data.size) + 32
                    while idx < _6443:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6855 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6443
                    idx = 0
                    s = _6423 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6443:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6855 + (32 * _6443) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257 len 32 * (2 * var121003) + 1] = call.data[calldata.size len 32 * (2 * var121003) + 1]
                if 0 >= (2 * var121003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var121003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4814 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4838 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4856 = mem[_4838]
                    require mem[_4838] == mem[_4838 + 12 len 20]
                    require ext_code.size(address(_4814))
                    staticcall address(_4814).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4926 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4940 = mem[_4926]
                    require mem[_4926] == mem[_4926 + 12 len 20]
                    if address(_4856) == wethAddress:
                        if mem[_4926 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257] = mem[_4926 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257] = address(_4856)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4940) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257] = address(_4940)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4797 = mem[64]
                mem[mem[64] + 32] = 32
                _4837 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var121003) + 257
                u = mem[64] + 96
                while idx < _4837:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5437 = mem[64]
                mem[mem[64]] = _4797 + (32 * _4837) + -mem[64] + 64
                mem[64] = _4797 + (32 * _4837) + 96
                mem[_5437 + 64] = t
                _5438 = mem[_5437]
                require mem[_5437] >= 32
                _5456 = mem[_5437 + 32]
                require mem[_5437 + 32] <= test266151307()
                require _5437 + mem[_5437 + 32] + 63 < _5437 + mem[_5437] + 32
                _5464 = mem[_5437 + mem[_5437 + 32] + 32]
                if mem[_5437 + mem[_5437 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4797 + (32 * _4837) + floor32(mem[_5437 + mem[_5437 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5437 + mem[_5437 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4797 + (32 * _4837) + floor32(mem[_5437 + mem[_5437 + 32] + 32]) + 97
                mem[_4797 + (32 * _4837) + 96] = _5464
                require _5456 + (32 * _5464) + 64 <= _5438 + 32
                idx = 0
                s = _5437 + _5456 + 64
                t = _4797 + (32 * _4837) + 128
                while idx < _5464:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5952 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5464
                idx = 0
                s = _4797 + (32 * _4837) + 128
                t = mem[64] + 68
                while idx < _5464:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5952 + (32 * _5464) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6424 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6432 = mem[_6424]
                require mem[_6424] <= test266151307()
                require _6424 + mem[_6424] + 31 < _6424 + return_data.size
                _6444 = mem[_6424 + mem[_6424]]
                if mem[_6424 + mem[_6424]] > test266151307():
                    revert with 'NH{q', 65
                if _6424 + ceil32(return_data.size) + floor32(mem[_6424 + mem[_6424]]) + 1 > test266151307() or floor32(mem[_6424 + mem[_6424]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6424 + ceil32(return_data.size) + floor32(mem[_6424 + mem[_6424]]) + 1
                mem[_6424 + ceil32(return_data.size)] = _6444
                require _6432 + (32 * _6444) + 32 <= return_data.size
                idx = 0
                s = _6424 + _6432 + 32
                t = _6424 + ceil32(return_data.size) + 32
                while idx < _6444:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6856 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6444
                idx = 0
                s = _6424 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6444:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6856 + (32 * _6444) + -mem[64] + 64
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var118003 > (-1 * arg2 * arg1) - 1:
                revert with 'NH{q', 17
            if var122001 <= (arg2 * arg1) + arg1:
                if var134003 > (-1 * arg2 * arg1) - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var122003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var122003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225 > test266151307() or floor32(var122003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var122003
                require 32 * var122003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var122003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var122003 and 2 > -1 / var122003:
                    revert with 'NH{q', 17
                if 2 * var122003 > -2:
                    revert with 'NH{q', 17
                if (2 * var122003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225] = (2 * var122003) + 1
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + (32 * (2 * var122003) + 1) + 257
                if not (2 * var122003) + 1:
                    if 0 >= (2 * var122003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var122003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4817 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4840 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4857 = mem[_4840]
                        require mem[_4840] == mem[_4840 + 12 len 20]
                        require ext_code.size(address(_4817))
                        staticcall address(_4817).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4928 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4941 = mem[_4928]
                        require mem[_4928] == mem[_4928 + 12 len 20]
                        if address(_4857) == wethAddress:
                            if mem[_4928 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 257] = mem[_4928 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 257] = address(_4857)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4941) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 257] = address(_4941)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4799 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4839 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 257
                    u = mem[64] + 96
                    while idx < _4839:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5439 = mem[64]
                    mem[mem[64]] = _4799 + (32 * _4839) + -mem[64] + 64
                    mem[64] = _4799 + (32 * _4839) + 96
                    mem[_5439 + 64] = t
                    _5440 = mem[_5439]
                    require mem[_5439] >= 32
                    _5457 = mem[_5439 + 32]
                    require mem[_5439 + 32] <= test266151307()
                    require _5439 + mem[_5439 + 32] + 63 < _5439 + mem[_5439] + 32
                    _5465 = mem[_5439 + mem[_5439 + 32] + 32]
                    if mem[_5439 + mem[_5439 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4799 + (32 * _4839) + floor32(mem[_5439 + mem[_5439 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5439 + mem[_5439 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4799 + (32 * _4839) + floor32(mem[_5439 + mem[_5439 + 32] + 32]) + 97
                    mem[_4799 + (32 * _4839) + 96] = _5465
                    require _5457 + (32 * _5465) + 64 <= _5440 + 32
                    idx = 0
                    s = _5439 + _5457 + 64
                    t = _4799 + (32 * _4839) + 128
                    while idx < _5465:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5953 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5465
                    idx = 0
                    s = _4799 + (32 * _4839) + 128
                    t = mem[64] + 68
                    while idx < _5465:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5953 + (32 * _5465) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6425 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6433 = mem[_6425]
                    require mem[_6425] <= test266151307()
                    require _6425 + mem[_6425] + 31 < _6425 + return_data.size
                    _6446 = mem[_6425 + mem[_6425]]
                    if mem[_6425 + mem[_6425]] > test266151307():
                        revert with 'NH{q', 65
                    if _6425 + ceil32(return_data.size) + floor32(mem[_6425 + mem[_6425]]) + 1 > test266151307() or floor32(mem[_6425 + mem[_6425]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6425 + ceil32(return_data.size) + floor32(mem[_6425 + mem[_6425]]) + 1
                    mem[_6425 + ceil32(return_data.size)] = _6446
                    require _6433 + (32 * _6446) + 32 <= return_data.size
                    idx = 0
                    s = _6425 + _6433 + 32
                    t = _6425 + ceil32(return_data.size) + 32
                    while idx < _6446:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6857 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6446
                    idx = 0
                    s = _6425 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6446:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6857 + (32 * _6446) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 257 len 32 * (2 * var122003) + 1] = call.data[calldata.size len 32 * (2 * var122003) + 1]
                if 0 >= (2 * var122003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var122003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4820 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4858 = mem[_4842]
                    require mem[_4842] == mem[_4842 + 12 len 20]
                    require ext_code.size(address(_4820))
                    staticcall address(_4820).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4930 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4942 = mem[_4930]
                    require mem[_4930] == mem[_4930 + 12 len 20]
                    if address(_4858) == wethAddress:
                        if mem[_4930 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 257] = mem[_4930 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 257] = address(_4858)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4942) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 257] = address(_4942)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4801 = mem[64]
                mem[mem[64] + 32] = 32
                _4841 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var122003) + 257
                u = mem[64] + 96
                while idx < _4841:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5441 = mem[64]
                mem[mem[64]] = _4801 + (32 * _4841) + -mem[64] + 64
                mem[64] = _4801 + (32 * _4841) + 96
                mem[_5441 + 64] = t
                _5442 = mem[_5441]
                require mem[_5441] >= 32
                _5458 = mem[_5441 + 32]
                require mem[_5441 + 32] <= test266151307()
                require _5441 + mem[_5441 + 32] + 63 < _5441 + mem[_5441] + 32
                _5466 = mem[_5441 + mem[_5441 + 32] + 32]
                if mem[_5441 + mem[_5441 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4801 + (32 * _4841) + floor32(mem[_5441 + mem[_5441 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5441 + mem[_5441 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4801 + (32 * _4841) + floor32(mem[_5441 + mem[_5441 + 32] + 32]) + 97
                mem[_4801 + (32 * _4841) + 96] = _5466
                require _5458 + (32 * _5466) + 64 <= _5442 + 32
                idx = 0
                s = _5441 + _5458 + 64
                t = _4801 + (32 * _4841) + 128
                while idx < _5466:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5466
                idx = 0
                s = _4801 + (32 * _4841) + 128
                t = mem[64] + 68
                while idx < _5466:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.uniqueAddresses(address[] rg1) with:
                        gas gas_remaining wei
                       args Array(len=_5466, data=mem[mem[64] + 68 len 32 * _5466])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6426 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6434 = mem[_6426]
                require mem[_6426] <= test266151307()
                require _6426 + mem[_6426] + 31 < _6426 + return_data.size
                _6447 = mem[_6426 + mem[_6426]]
                if mem[_6426 + mem[_6426]] > test266151307():
                    revert with 'NH{q', 65
                if _6426 + ceil32(return_data.size) + floor32(mem[_6426 + mem[_6426]]) + 1 > test266151307() or floor32(mem[_6426 + mem[_6426]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6426 + ceil32(return_data.size) + floor32(mem[_6426 + mem[_6426]]) + 1
                mem[_6426 + ceil32(return_data.size)] = _6447
                require _6434 + (32 * _6447) + 32 <= return_data.size
                idx = 0
                s = _6426 + _6434 + 32
                t = _6426 + ceil32(return_data.size) + 32
                while idx < _6447:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6858 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6447
                idx = 0
                s = _6426 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6447:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6858 + (32 * _6447) + -mem[64] + 64
    else:
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var125003 > (-1 * arg2 * arg1) - 1:
                revert with 'NH{q', 17
            if var129001 <= ext_call.return_data[0] - 1:
                if var141003 > (-1 * arg2 * arg1) - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var129003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var129003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225 > test266151307() or floor32(var129003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var129003
                require 32 * var129003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var129003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var129003 and 2 > -1 / var129003:
                    revert with 'NH{q', 17
                if 2 * var129003 > -2:
                    revert with 'NH{q', 17
                if (2 * var129003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225] = (2 * var129003) + 1
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + (32 * (2 * var129003) + 1) + 257
                if not (2 * var129003) + 1:
                    if 0 >= (2 * var129003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var129003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4823 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4859 = mem[_4844]
                        require mem[_4844] == mem[_4844 + 12 len 20]
                        require ext_code.size(address(_4823))
                        staticcall address(_4823).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4943 = mem[_4932]
                        require mem[_4932] == mem[_4932 + 12 len 20]
                        if address(_4859) == wethAddress:
                            if mem[_4932 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257] = mem[_4932 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257] = address(_4859)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4943) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257] = address(_4943)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4803 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4843 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257
                    u = mem[64] + 96
                    while idx < _4843:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5443 = mem[64]
                    mem[mem[64]] = _4803 + (32 * _4843) + -mem[64] + 64
                    mem[64] = _4803 + (32 * _4843) + 96
                    mem[_5443 + 64] = t
                    _5444 = mem[_5443]
                    require mem[_5443] >= 32
                    _5459 = mem[_5443 + 32]
                    require mem[_5443 + 32] <= test266151307()
                    require _5443 + mem[_5443 + 32] + 63 < _5443 + mem[_5443] + 32
                    _5467 = mem[_5443 + mem[_5443 + 32] + 32]
                    if mem[_5443 + mem[_5443 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4803 + (32 * _4843) + floor32(mem[_5443 + mem[_5443 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5443 + mem[_5443 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4803 + (32 * _4843) + floor32(mem[_5443 + mem[_5443 + 32] + 32]) + 97
                    mem[_4803 + (32 * _4843) + 96] = _5467
                    require _5459 + (32 * _5467) + 64 <= _5444 + 32
                    idx = 0
                    s = _5443 + _5459 + 64
                    t = _4803 + (32 * _4843) + 128
                    while idx < _5467:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5467
                    idx = 0
                    s = _4803 + (32 * _4843) + 128
                    t = mem[64] + 68
                    while idx < _5467:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.uniqueAddresses(address[] rg1) with:
                            gas gas_remaining wei
                           args Array(len=_5467, data=mem[mem[64] + 68 len 32 * _5467])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6427 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6435 = mem[_6427]
                    require mem[_6427] <= test266151307()
                    require _6427 + mem[_6427] + 31 < _6427 + return_data.size
                    _6449 = mem[_6427 + mem[_6427]]
                    if mem[_6427 + mem[_6427]] > test266151307():
                        revert with 'NH{q', 65
                    if _6427 + ceil32(return_data.size) + floor32(mem[_6427 + mem[_6427]]) + 1 > test266151307() or floor32(mem[_6427 + mem[_6427]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6427 + ceil32(return_data.size) + floor32(mem[_6427 + mem[_6427]]) + 1
                    mem[_6427 + ceil32(return_data.size)] = _6449
                    require _6435 + (32 * _6449) + 32 <= return_data.size
                    idx = 0
                    s = _6427 + _6435 + 32
                    t = _6427 + ceil32(return_data.size) + 32
                    while idx < _6449:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6859 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6449
                    idx = 0
                    s = _6427 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6449:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6859 + (32 * _6449) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257 len 32 * (2 * var129003) + 1] = call.data[calldata.size len 32 * (2 * var129003) + 1]
                if 0 >= (2 * var129003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var129003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4826 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4860 = mem[_4846]
                    require mem[_4846] == mem[_4846 + 12 len 20]
                    require ext_code.size(address(_4826))
                    staticcall address(_4826).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4934 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4944 = mem[_4934]
                    require mem[_4934] == mem[_4934 + 12 len 20]
                    if address(_4860) == wethAddress:
                        if mem[_4934 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257] = mem[_4934 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257] = address(_4860)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4944) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257] = address(_4944)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4805 = mem[64]
                mem[mem[64] + 32] = 32
                _4845 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var129003) + 257
                u = mem[64] + 96
                while idx < _4845:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5445 = mem[64]
                mem[mem[64]] = _4805 + (32 * _4845) + -mem[64] + 64
                mem[64] = _4805 + (32 * _4845) + 96
                mem[_5445 + 64] = t
                _5446 = mem[_5445]
                require mem[_5445] >= 32
                _5460 = mem[_5445 + 32]
                require mem[_5445 + 32] <= test266151307()
                require _5445 + mem[_5445 + 32] + 63 < _5445 + mem[_5445] + 32
                _5468 = mem[_5445 + mem[_5445 + 32] + 32]
                if mem[_5445 + mem[_5445 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4805 + (32 * _4845) + floor32(mem[_5445 + mem[_5445 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5445 + mem[_5445 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4805 + (32 * _4845) + floor32(mem[_5445 + mem[_5445 + 32] + 32]) + 97
                mem[_4805 + (32 * _4845) + 96] = _5468
                require _5460 + (32 * _5468) + 64 <= _5446 + 32
                idx = 0
                s = _5445 + _5460 + 64
                t = _4805 + (32 * _4845) + 128
                while idx < _5468:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5956 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5468
                idx = 0
                s = _4805 + (32 * _4845) + 128
                t = mem[64] + 68
                while idx < _5468:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5956 + (32 * _5468) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6428 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6436 = mem[_6428]
                require mem[_6428] <= test266151307()
                require _6428 + mem[_6428] + 31 < _6428 + return_data.size
                _6450 = mem[_6428 + mem[_6428]]
                if mem[_6428 + mem[_6428]] > test266151307():
                    revert with 'NH{q', 65
                if _6428 + ceil32(return_data.size) + floor32(mem[_6428 + mem[_6428]]) + 1 > test266151307() or floor32(mem[_6428 + mem[_6428]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6428 + ceil32(return_data.size) + floor32(mem[_6428 + mem[_6428]]) + 1
                mem[_6428 + ceil32(return_data.size)] = _6450
                require _6436 + (32 * _6450) + 32 <= return_data.size
                idx = 0
                s = _6428 + _6436 + 32
                t = _6428 + ceil32(return_data.size) + 32
                while idx < _6450:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6860 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6450
                idx = 0
                s = _6428 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6450:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6860 + (32 * _6450) + -mem[64] + 64
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var126003 > (-1 * arg2 * arg1) - 1:
                revert with 'NH{q', 17
            if var130001 <= ext_call.return_data[0] - 1:
                if var142003 > (-1 * arg2 * arg1) - 1:
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
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = var130003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 223 < ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224
                if var130003 > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225 > test266151307() or floor32(var130003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224] = var130003
                require 32 * var130003 <= 32 * ext_call.return_data[0]
                s = 0
                t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] + 192
                u = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256
                while s < var130003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var130003 and 2 > -1 / var130003:
                    revert with 'NH{q', 17
                if 2 * var130003 > -2:
                    revert with 'NH{q', 17
                if (2 * var130003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225] = (2 * var130003) + 1
                mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + (32 * (2 * var130003) + 1) + 257
                if not (2 * var130003) + 1:
                    if 0 >= (2 * var130003) + 1:
                        revert with 'NH{q', 50
                    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var130003:
                        if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4829 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4848 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4861 = mem[_4848]
                        require mem[_4848] == mem[_4848 + 12 len 20]
                        require ext_code.size(address(_4829))
                        staticcall address(_4829).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4936 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4945 = mem[_4936]
                        require mem[_4936] == mem[_4936 + 12 len 20]
                        if address(_4861) == wethAddress:
                            if mem[_4936 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 257] = mem[_4936 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 257] = address(_4861)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4945) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 257] = address(_4945)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4807 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4847 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225]
                    mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 257
                    u = mem[64] + 96
                    while idx < _4847:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5447 = mem[64]
                    mem[mem[64]] = _4807 + (32 * _4847) + -mem[64] + 64
                    mem[64] = _4807 + (32 * _4847) + 96
                    mem[_5447 + 64] = t
                    _5448 = mem[_5447]
                    require mem[_5447] >= 32
                    _5461 = mem[_5447 + 32]
                    require mem[_5447 + 32] <= test266151307()
                    require _5447 + mem[_5447 + 32] + 63 < _5447 + mem[_5447] + 32
                    _5469 = mem[_5447 + mem[_5447 + 32] + 32]
                    if mem[_5447 + mem[_5447 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4807 + (32 * _4847) + floor32(mem[_5447 + mem[_5447 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5447 + mem[_5447 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4807 + (32 * _4847) + floor32(mem[_5447 + mem[_5447 + 32] + 32]) + 97
                    mem[_4807 + (32 * _4847) + 96] = _5469
                    require _5461 + (32 * _5469) + 64 <= _5448 + 32
                    idx = 0
                    s = _5447 + _5461 + 64
                    t = _4807 + (32 * _4847) + 128
                    while idx < _5469:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5957 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5469
                    idx = 0
                    s = _4807 + (32 * _4847) + 128
                    t = mem[64] + 68
                    while idx < _5469:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5957 + (32 * _5469) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6429 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6437 = mem[_6429]
                    require mem[_6429] <= test266151307()
                    require _6429 + mem[_6429] + 31 < _6429 + return_data.size
                    _6452 = mem[_6429 + mem[_6429]]
                    if mem[_6429 + mem[_6429]] > test266151307():
                        revert with 'NH{q', 65
                    if _6429 + ceil32(return_data.size) + floor32(mem[_6429 + mem[_6429]]) + 1 > test266151307() or floor32(mem[_6429 + mem[_6429]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6429 + ceil32(return_data.size) + floor32(mem[_6429 + mem[_6429]]) + 1
                    mem[_6429 + ceil32(return_data.size)] = _6452
                    require _6437 + (32 * _6452) + 32 <= return_data.size
                    idx = 0
                    s = _6429 + _6437 + 32
                    t = _6429 + ceil32(return_data.size) + 32
                    while idx < _6452:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6861 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6452
                    idx = 0
                    s = _6429 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6452:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6861 + (32 * _6452) + -mem[64] + 64
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 257 len 32 * (2 * var130003) + 1] = call.data[calldata.size len 32 * (2 * var130003) + 1]
                if 0 >= (2 * var130003) + 1:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var130003:
                    if s >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4832 = mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4862 = mem[_4850]
                    require mem[_4850] == mem[_4850 + 12 len 20]
                    require ext_code.size(address(_4832))
                    staticcall address(_4832).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4938 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4946 = mem[_4938]
                    require mem[_4938] == mem[_4938 + 12 len 20]
                    if address(_4862) == wethAddress:
                        if mem[_4938 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 257] = mem[_4938 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 257] = address(_4862)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4946) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 257] = address(_4946)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4809 = mem[64]
                mem[mem[64] + 32] = 32
                _4849 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 225]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + floor32(var130003) + 257
                u = mem[64] + 96
                while idx < _4849:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5449 = mem[64]
                mem[mem[64]] = _4809 + (32 * _4849) + -mem[64] + 64
                mem[64] = _4809 + (32 * _4849) + 96
                mem[_5449 + 64] = t
                _5450 = mem[_5449]
                require mem[_5449] >= 32
                _5462 = mem[_5449 + 32]
                require mem[_5449 + 32] <= test266151307()
                require _5449 + mem[_5449 + 32] + 63 < _5449 + mem[_5449] + 32
                _5470 = mem[_5449 + mem[_5449 + 32] + 32]
                if mem[_5449 + mem[_5449 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4809 + (32 * _4849) + floor32(mem[_5449 + mem[_5449 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5449 + mem[_5449 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4809 + (32 * _4849) + floor32(mem[_5449 + mem[_5449 + 32] + 32]) + 97
                mem[_4809 + (32 * _4849) + 96] = _5470
                require _5462 + (32 * _5470) + 64 <= _5450 + 32
                idx = 0
                s = _5449 + _5462 + 64
                t = _4809 + (32 * _4849) + 128
                while idx < _5470:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5470
                idx = 0
                s = _4809 + (32 * _4849) + 128
                t = mem[64] + 68
                while idx < _5470:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.uniqueAddresses(address[] rg1) with:
                        gas gas_remaining wei
                       args Array(len=_5470, data=mem[mem[64] + 68 len 32 * _5470])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6430 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6438 = mem[_6430]
                require mem[_6430] <= test266151307()
                require _6430 + mem[_6430] + 31 < _6430 + return_data.size
                _6453 = mem[_6430 + mem[_6430]]
                if mem[_6430 + mem[_6430]] > test266151307():
                    revert with 'NH{q', 65
                if _6430 + ceil32(return_data.size) + floor32(mem[_6430 + mem[_6430]]) + 1 > test266151307() or floor32(mem[_6430 + mem[_6430]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6430 + ceil32(return_data.size) + floor32(mem[_6430 + mem[_6430]]) + 1
                mem[_6430 + ceil32(return_data.size)] = _6453
                require _6438 + (32 * _6453) + 32 <= return_data.size
                idx = 0
                s = _6430 + _6438 + 32
                t = _6430 + ceil32(return_data.size) + 32
                while idx < _6453:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6862 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6453
                idx = 0
                s = _6430 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6453:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6862 + (32 * _6453) + -mem[64] + 64
}

function sub_ee7a1825(?) payable {
    require ext_code.size(stor4)
    staticcall stor4.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.allPairsLength() with:
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
            if var112003 > -1:
                revert with 'NH{q', 17
            if var116001 <= ext_call.return_data[0]:
                if var128003 > -1:
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
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var116003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var116003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225 > test266151307() or floor32(var116003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var116003
                require 32 * var116003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var116003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var116003 and 2 > -1 / var116003:
                    revert with 'NH{q', 17
                if 2 * var116003 > -2:
                    revert with 'NH{q', 17
                if (2 * var116003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225] = (2 * var116003) + 1
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + (32 * (2 * var116003) + 1) + 257
                if not (2 * var116003) + 1:
                    if 0 >= (2 * var116003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var116003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4820 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4845 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4864 = mem[_4845]
                        require mem[_4845] == mem[_4845 + 12 len 20]
                        require ext_code.size(address(_4820))
                        staticcall address(_4820).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4948 = mem[_4933]
                        require mem[_4933] == mem[_4933 + 12 len 20]
                        if address(_4864) == wethAddress:
                            if mem[_4933 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257] = mem[_4933 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257] = address(_4864)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4948) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257] = address(_4948)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4804 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4844 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257
                    u = mem[64] + 96
                    while idx < _4844:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5444 = mem[64]
                    mem[mem[64]] = _4804 + (32 * _4844) + -mem[64] + 64
                    mem[64] = _4804 + (32 * _4844) + 96
                    mem[_5444 + 64] = t
                    _5445 = mem[_5444]
                    require mem[_5444] >= 32
                    _5464 = mem[_5444 + 32]
                    require mem[_5444 + 32] <= test266151307()
                    require _5444 + mem[_5444 + 32] + 63 < _5444 + mem[_5444] + 32
                    _5472 = mem[_5444 + mem[_5444 + 32] + 32]
                    if mem[_5444 + mem[_5444 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4804 + (32 * _4844) + floor32(mem[_5444 + mem[_5444 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5444 + mem[_5444 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4804 + (32 * _4844) + floor32(mem[_5444 + mem[_5444 + 32] + 32]) + 97
                    mem[_4804 + (32 * _4844) + 96] = _5472
                    require _5464 + (32 * _5472) + 64 <= _5445 + 32
                    idx = 0
                    s = _5444 + _5464 + 64
                    t = _4804 + (32 * _4844) + 128
                    while idx < _5472:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5960 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5472
                    idx = 0
                    s = _4804 + (32 * _4844) + 128
                    t = mem[64] + 68
                    while idx < _5472:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5960 + (32 * _5472) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6432 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6440 = mem[_6432]
                    require mem[_6432] <= test266151307()
                    require _6432 + mem[_6432] + 31 < _6432 + return_data.size
                    _6452 = mem[_6432 + mem[_6432]]
                    if mem[_6432 + mem[_6432]] > test266151307():
                        revert with 'NH{q', 65
                    if _6432 + ceil32(return_data.size) + floor32(mem[_6432 + mem[_6432]]) + 1 > test266151307() or floor32(mem[_6432 + mem[_6432]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6432 + ceil32(return_data.size) + floor32(mem[_6432 + mem[_6432]]) + 1
                    mem[_6432 + ceil32(return_data.size)] = _6452
                    require _6440 + (32 * _6452) + 32 <= return_data.size
                    idx = 0
                    s = _6432 + _6440 + 32
                    t = _6432 + ceil32(return_data.size) + 32
                    while idx < _6452:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6864 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6452
                    idx = 0
                    s = _6432 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6452:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6864 + (32 * _6452) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257 len 32 * (2 * var116003) + 1] = call.data[calldata.size len 32 * (2 * var116003) + 1]
                if 0 >= (2 * var116003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var116003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4823 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4865 = mem[_4847]
                    require mem[_4847] == mem[_4847 + 12 len 20]
                    require ext_code.size(address(_4823))
                    staticcall address(_4823).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4935 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4949 = mem[_4935]
                    require mem[_4935] == mem[_4935 + 12 len 20]
                    if address(_4865) == wethAddress:
                        if mem[_4935 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257] = mem[_4935 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257] = address(_4865)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4949) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257] = address(_4949)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4806 = mem[64]
                mem[mem[64] + 32] = 32
                _4846 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var116003) + 257
                u = mem[64] + 96
                while idx < _4846:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5446 = mem[64]
                mem[mem[64]] = _4806 + (32 * _4846) + -mem[64] + 64
                mem[64] = _4806 + (32 * _4846) + 96
                mem[_5446 + 64] = t
                _5447 = mem[_5446]
                require mem[_5446] >= 32
                _5465 = mem[_5446 + 32]
                require mem[_5446 + 32] <= test266151307()
                require _5446 + mem[_5446 + 32] + 63 < _5446 + mem[_5446] + 32
                _5473 = mem[_5446 + mem[_5446 + 32] + 32]
                if mem[_5446 + mem[_5446 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4806 + (32 * _4846) + floor32(mem[_5446 + mem[_5446 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5446 + mem[_5446 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4806 + (32 * _4846) + floor32(mem[_5446 + mem[_5446 + 32] + 32]) + 97
                mem[_4806 + (32 * _4846) + 96] = _5473
                require _5465 + (32 * _5473) + 64 <= _5447 + 32
                idx = 0
                s = _5446 + _5465 + 64
                t = _4806 + (32 * _4846) + 128
                while idx < _5473:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5961 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5473
                idx = 0
                s = _4806 + (32 * _4846) + 128
                t = mem[64] + 68
                while idx < _5473:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5961 + (32 * _5473) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6433 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6441 = mem[_6433]
                require mem[_6433] <= test266151307()
                require _6433 + mem[_6433] + 31 < _6433 + return_data.size
                _6453 = mem[_6433 + mem[_6433]]
                if mem[_6433 + mem[_6433]] > test266151307():
                    revert with 'NH{q', 65
                if _6433 + ceil32(return_data.size) + floor32(mem[_6433 + mem[_6433]]) + 1 > test266151307() or floor32(mem[_6433 + mem[_6433]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6433 + ceil32(return_data.size) + floor32(mem[_6433 + mem[_6433]]) + 1
                mem[_6433 + ceil32(return_data.size)] = _6453
                require _6441 + (32 * _6453) + 32 <= return_data.size
                idx = 0
                s = _6433 + _6441 + 32
                t = _6433 + ceil32(return_data.size) + 32
                while idx < _6453:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6865 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6453
                idx = 0
                s = _6433 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6453:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6865 + (32 * _6453) + -mem[64] + 64
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var113003 > -1:
                revert with 'NH{q', 17
            if var117001 <= ext_call.return_data[0]:
                if var129003 > -1:
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
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var117003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var117003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225 > test266151307() or floor32(var117003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var117003
                require 32 * var117003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var117003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var117003 and 2 > -1 / var117003:
                    revert with 'NH{q', 17
                if 2 * var117003 > -2:
                    revert with 'NH{q', 17
                if (2 * var117003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225] = (2 * var117003) + 1
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + (32 * (2 * var117003) + 1) + 257
                if not (2 * var117003) + 1:
                    if 0 >= (2 * var117003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var117003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4826 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4849 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4866 = mem[_4849]
                        require mem[_4849] == mem[_4849 + 12 len 20]
                        require ext_code.size(address(_4826))
                        staticcall address(_4826).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4937 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4950 = mem[_4937]
                        require mem[_4937] == mem[_4937 + 12 len 20]
                        if address(_4866) == wethAddress:
                            if mem[_4937 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 257] = mem[_4937 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 257] = address(_4866)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4950) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 257] = address(_4950)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4808 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4848 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 257
                    u = mem[64] + 96
                    while idx < _4848:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5448 = mem[64]
                    mem[mem[64]] = _4808 + (32 * _4848) + -mem[64] + 64
                    mem[64] = _4808 + (32 * _4848) + 96
                    mem[_5448 + 64] = t
                    _5449 = mem[_5448]
                    require mem[_5448] >= 32
                    _5466 = mem[_5448 + 32]
                    require mem[_5448 + 32] <= test266151307()
                    require _5448 + mem[_5448 + 32] + 63 < _5448 + mem[_5448] + 32
                    _5474 = mem[_5448 + mem[_5448 + 32] + 32]
                    if mem[_5448 + mem[_5448 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4808 + (32 * _4848) + floor32(mem[_5448 + mem[_5448 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5448 + mem[_5448 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4808 + (32 * _4848) + floor32(mem[_5448 + mem[_5448 + 32] + 32]) + 97
                    mem[_4808 + (32 * _4848) + 96] = _5474
                    require _5466 + (32 * _5474) + 64 <= _5449 + 32
                    idx = 0
                    s = _5448 + _5466 + 64
                    t = _4808 + (32 * _4848) + 128
                    while idx < _5474:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5962 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5474
                    idx = 0
                    s = _4808 + (32 * _4848) + 128
                    t = mem[64] + 68
                    while idx < _5474:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5962 + (32 * _5474) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6434 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6442 = mem[_6434]
                    require mem[_6434] <= test266151307()
                    require _6434 + mem[_6434] + 31 < _6434 + return_data.size
                    _6455 = mem[_6434 + mem[_6434]]
                    if mem[_6434 + mem[_6434]] > test266151307():
                        revert with 'NH{q', 65
                    if _6434 + ceil32(return_data.size) + floor32(mem[_6434 + mem[_6434]]) + 1 > test266151307() or floor32(mem[_6434 + mem[_6434]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6434 + ceil32(return_data.size) + floor32(mem[_6434 + mem[_6434]]) + 1
                    mem[_6434 + ceil32(return_data.size)] = _6455
                    require _6442 + (32 * _6455) + 32 <= return_data.size
                    idx = 0
                    s = _6434 + _6442 + 32
                    t = _6434 + ceil32(return_data.size) + 32
                    while idx < _6455:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6866 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6455
                    idx = 0
                    s = _6434 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6455:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6866 + (32 * _6455) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 257 len 32 * (2 * var117003) + 1] = call.data[calldata.size len 32 * (2 * var117003) + 1]
                if 0 >= (2 * var117003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var117003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4829 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4851 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4867 = mem[_4851]
                    require mem[_4851] == mem[_4851 + 12 len 20]
                    require ext_code.size(address(_4829))
                    staticcall address(_4829).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4939 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4951 = mem[_4939]
                    require mem[_4939] == mem[_4939 + 12 len 20]
                    if address(_4867) == wethAddress:
                        if mem[_4939 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 257] = mem[_4939 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 257] = address(_4867)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4951) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 257] = address(_4951)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4810 = mem[64]
                mem[mem[64] + 32] = 32
                _4850 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var117003) + 257
                u = mem[64] + 96
                while idx < _4850:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5450 = mem[64]
                mem[mem[64]] = _4810 + (32 * _4850) + -mem[64] + 64
                mem[64] = _4810 + (32 * _4850) + 96
                mem[_5450 + 64] = t
                _5451 = mem[_5450]
                require mem[_5450] >= 32
                _5467 = mem[_5450 + 32]
                require mem[_5450 + 32] <= test266151307()
                require _5450 + mem[_5450 + 32] + 63 < _5450 + mem[_5450] + 32
                _5475 = mem[_5450 + mem[_5450 + 32] + 32]
                if mem[_5450 + mem[_5450 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4810 + (32 * _4850) + floor32(mem[_5450 + mem[_5450 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5450 + mem[_5450 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4810 + (32 * _4850) + floor32(mem[_5450 + mem[_5450 + 32] + 32]) + 97
                mem[_4810 + (32 * _4850) + 96] = _5475
                require _5467 + (32 * _5475) + 64 <= _5451 + 32
                idx = 0
                s = _5450 + _5467 + 64
                t = _4810 + (32 * _4850) + 128
                while idx < _5475:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5963 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5475
                idx = 0
                s = _4810 + (32 * _4850) + 128
                t = mem[64] + 68
                while idx < _5475:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5963 + (32 * _5475) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6435 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6443 = mem[_6435]
                require mem[_6435] <= test266151307()
                require _6435 + mem[_6435] + 31 < _6435 + return_data.size
                _6456 = mem[_6435 + mem[_6435]]
                if mem[_6435 + mem[_6435]] > test266151307():
                    revert with 'NH{q', 65
                if _6435 + ceil32(return_data.size) + floor32(mem[_6435 + mem[_6435]]) + 1 > test266151307() or floor32(mem[_6435 + mem[_6435]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6435 + ceil32(return_data.size) + floor32(mem[_6435 + mem[_6435]]) + 1
                mem[_6435 + ceil32(return_data.size)] = _6456
                require _6443 + (32 * _6456) + 32 <= return_data.size
                idx = 0
                s = _6435 + _6443 + 32
                t = _6435 + ceil32(return_data.size) + 32
                while idx < _6456:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6867 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6456
                idx = 0
                s = _6435 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6456:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6867 + (32 * _6456) + -mem[64] + 64
    else:
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if var120003 > -1:
                revert with 'NH{q', 17
            if var124001 <= ext_call.return_data[0] - 1:
                if var136003 > -1:
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
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var124003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var124003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225 > test266151307() or floor32(var124003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var124003
                require 32 * var124003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var124003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var124003 and 2 > -1 / var124003:
                    revert with 'NH{q', 17
                if 2 * var124003 > -2:
                    revert with 'NH{q', 17
                if (2 * var124003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225] = (2 * var124003) + 1
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + (32 * (2 * var124003) + 1) + 257
                if not (2 * var124003) + 1:
                    if 0 >= (2 * var124003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var124003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4832 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4853 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4868 = mem[_4853]
                        require mem[_4853] == mem[_4853 + 12 len 20]
                        require ext_code.size(address(_4832))
                        staticcall address(_4832).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4941 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4952 = mem[_4941]
                        require mem[_4941] == mem[_4941 + 12 len 20]
                        if address(_4868) == wethAddress:
                            if mem[_4941 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257] = mem[_4941 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257] = address(_4868)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4952) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257] = address(_4952)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4812 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4852 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257
                    u = mem[64] + 96
                    while idx < _4852:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5452 = mem[64]
                    mem[mem[64]] = _4812 + (32 * _4852) + -mem[64] + 64
                    mem[64] = _4812 + (32 * _4852) + 96
                    mem[_5452 + 64] = t
                    _5453 = mem[_5452]
                    require mem[_5452] >= 32
                    _5468 = mem[_5452 + 32]
                    require mem[_5452 + 32] <= test266151307()
                    require _5452 + mem[_5452 + 32] + 63 < _5452 + mem[_5452] + 32
                    _5476 = mem[_5452 + mem[_5452 + 32] + 32]
                    if mem[_5452 + mem[_5452 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4812 + (32 * _4852) + floor32(mem[_5452 + mem[_5452 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5452 + mem[_5452 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4812 + (32 * _4852) + floor32(mem[_5452 + mem[_5452 + 32] + 32]) + 97
                    mem[_4812 + (32 * _4852) + 96] = _5476
                    require _5468 + (32 * _5476) + 64 <= _5453 + 32
                    idx = 0
                    s = _5452 + _5468 + 64
                    t = _4812 + (32 * _4852) + 128
                    while idx < _5476:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5964 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5476
                    idx = 0
                    s = _4812 + (32 * _4852) + 128
                    t = mem[64] + 68
                    while idx < _5476:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5964 + (32 * _5476) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6436 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6444 = mem[_6436]
                    require mem[_6436] <= test266151307()
                    require _6436 + mem[_6436] + 31 < _6436 + return_data.size
                    _6458 = mem[_6436 + mem[_6436]]
                    if mem[_6436 + mem[_6436]] > test266151307():
                        revert with 'NH{q', 65
                    if _6436 + ceil32(return_data.size) + floor32(mem[_6436 + mem[_6436]]) + 1 > test266151307() or floor32(mem[_6436 + mem[_6436]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6436 + ceil32(return_data.size) + floor32(mem[_6436 + mem[_6436]]) + 1
                    mem[_6436 + ceil32(return_data.size)] = _6458
                    require _6444 + (32 * _6458) + 32 <= return_data.size
                    idx = 0
                    s = _6436 + _6444 + 32
                    t = _6436 + ceil32(return_data.size) + 32
                    while idx < _6458:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6868 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6458
                    idx = 0
                    s = _6436 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6458:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6868 + (32 * _6458) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257 len 32 * (2 * var124003) + 1] = call.data[calldata.size len 32 * (2 * var124003) + 1]
                if 0 >= (2 * var124003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var124003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4835 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4855 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4869 = mem[_4855]
                    require mem[_4855] == mem[_4855 + 12 len 20]
                    require ext_code.size(address(_4835))
                    staticcall address(_4835).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4943 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4953 = mem[_4943]
                    require mem[_4943] == mem[_4943 + 12 len 20]
                    if address(_4869) == wethAddress:
                        if mem[_4943 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257] = mem[_4943 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257] = address(_4869)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4953) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257] = address(_4953)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4814 = mem[64]
                mem[mem[64] + 32] = 32
                _4854 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var124003) + 257
                u = mem[64] + 96
                while idx < _4854:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5454 = mem[64]
                mem[mem[64]] = _4814 + (32 * _4854) + -mem[64] + 64
                mem[64] = _4814 + (32 * _4854) + 96
                mem[_5454 + 64] = t
                _5455 = mem[_5454]
                require mem[_5454] >= 32
                _5469 = mem[_5454 + 32]
                require mem[_5454 + 32] <= test266151307()
                require _5454 + mem[_5454 + 32] + 63 < _5454 + mem[_5454] + 32
                _5477 = mem[_5454 + mem[_5454 + 32] + 32]
                if mem[_5454 + mem[_5454 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4814 + (32 * _4854) + floor32(mem[_5454 + mem[_5454 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5454 + mem[_5454 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4814 + (32 * _4854) + floor32(mem[_5454 + mem[_5454 + 32] + 32]) + 97
                mem[_4814 + (32 * _4854) + 96] = _5477
                require _5469 + (32 * _5477) + 64 <= _5455 + 32
                idx = 0
                s = _5454 + _5469 + 64
                t = _4814 + (32 * _4854) + 128
                while idx < _5477:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5477
                idx = 0
                s = _4814 + (32 * _4854) + 128
                t = mem[64] + 68
                while idx < _5477:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.uniqueAddresses(address[] rg1) with:
                        gas gas_remaining wei
                       args Array(len=_5477, data=mem[mem[64] + 68 len 32 * _5477])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6437 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6445 = mem[_6437]
                require mem[_6437] <= test266151307()
                require _6437 + mem[_6437] + 31 < _6437 + return_data.size
                _6459 = mem[_6437 + mem[_6437]]
                if mem[_6437 + mem[_6437]] > test266151307():
                    revert with 'NH{q', 65
                if _6437 + ceil32(return_data.size) + floor32(mem[_6437 + mem[_6437]]) + 1 > test266151307() or floor32(mem[_6437 + mem[_6437]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6437 + ceil32(return_data.size) + floor32(mem[_6437 + mem[_6437]]) + 1
                mem[_6437 + ceil32(return_data.size)] = _6459
                require _6445 + (32 * _6459) + 32 <= return_data.size
                idx = 0
                s = _6437 + _6445 + 32
                t = _6437 + ceil32(return_data.size) + 32
                while idx < _6459:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6869 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6459
                idx = 0
                s = _6437 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6459:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6869 + (32 * _6459) + -mem[64] + 64
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if var121003 > -1:
                revert with 'NH{q', 17
            if var125001 <= ext_call.return_data[0] - 1:
                if var137003 > -1:
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
                mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = var125003
                require (32 * ext_call.return_data[0]) + 64 >= 32
                require (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 223 < (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224
                if var125003 > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225 > test266151307() or floor32(var125003) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224] = var125003
                require 32 * var125003 <= 32 * ext_call.return_data[0]
                s = 0
                t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] + 192
                u = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256
                while s < var125003:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if var125003 and 2 > -1 / var125003:
                    revert with 'NH{q', 17
                if 2 * var125003 > -2:
                    revert with 'NH{q', 17
                if (2 * var125003) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225] = (2 * var125003) + 1
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + (32 * (2 * var125003) + 1) + 257
                if not (2 * var125003) + 1:
                    if 0 >= (2 * var125003) + 1:
                        revert with 'NH{q', 50
                    mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 257] = wethAddress
                    s = 0
                    t = 1
                    while s < var125003:
                        if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                            revert with 'NH{q', 50
                        _4838 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                        require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                        staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4857 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4870 = mem[_4857]
                        require mem[_4857] == mem[_4857 + 12 len 20]
                        require ext_code.size(address(_4838))
                        staticcall address(_4838).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4945 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4954 = mem[_4945]
                        require mem[_4945] == mem[_4945 + 12 len 20]
                        if address(_4870) == wethAddress:
                            if mem[_4945 + 12 len 20] == wethAddress:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t
                                continue 
                            if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 257] = mem[_4945 + 12 len 20]
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 257] = address(_4870)
                        if t == -1:
                            revert with 'NH{q', 17
                        if address(_4954) == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + 1
                            continue 
                        if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 257] = address(_4954)
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 2
                        continue 
                    _4816 = mem[64]
                    mem[mem[64] + 32] = 32
                    _4856 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225]
                    mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 257
                    u = mem[64] + 96
                    while idx < _4856:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    _5456 = mem[64]
                    mem[mem[64]] = _4816 + (32 * _4856) + -mem[64] + 64
                    mem[64] = _4816 + (32 * _4856) + 96
                    mem[_5456 + 64] = t
                    _5457 = mem[_5456]
                    require mem[_5456] >= 32
                    _5470 = mem[_5456 + 32]
                    require mem[_5456 + 32] <= test266151307()
                    require _5456 + mem[_5456 + 32] + 63 < _5456 + mem[_5456] + 32
                    _5478 = mem[_5456 + mem[_5456 + 32] + 32]
                    if mem[_5456 + mem[_5456 + 32] + 32] > test266151307():
                        revert with 'NH{q', 65
                    if _4816 + (32 * _4856) + floor32(mem[_5456 + mem[_5456 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5456 + mem[_5456 + 32] + 32]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = _4816 + (32 * _4856) + floor32(mem[_5456 + mem[_5456 + 32] + 32]) + 97
                    mem[_4816 + (32 * _4856) + 96] = _5478
                    require _5470 + (32 * _5478) + 64 <= _5457 + 32
                    idx = 0
                    s = _5456 + _5470 + 64
                    t = _4816 + (32 * _4856) + 128
                    while idx < _5478:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _5966 = mem[64]
                    mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _5478
                    idx = 0
                    s = _4816 + (32 * _4856) + 128
                    t = mem[64] + 68
                    while idx < _5478:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5966 + (32 * _5478) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6438 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6446 = mem[_6438]
                    require mem[_6438] <= test266151307()
                    require _6438 + mem[_6438] + 31 < _6438 + return_data.size
                    _6461 = mem[_6438 + mem[_6438]]
                    if mem[_6438 + mem[_6438]] > test266151307():
                        revert with 'NH{q', 65
                    if _6438 + ceil32(return_data.size) + floor32(mem[_6438 + mem[_6438]]) + 1 > test266151307() or floor32(mem[_6438 + mem[_6438]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _6438 + ceil32(return_data.size) + floor32(mem[_6438 + mem[_6438]]) + 1
                    mem[_6438 + ceil32(return_data.size)] = _6461
                    require _6446 + (32 * _6461) + 32 <= return_data.size
                    idx = 0
                    s = _6438 + _6446 + 32
                    t = _6438 + ceil32(return_data.size) + 32
                    while idx < _6461:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6870 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _6461
                    idx = 0
                    s = _6438 + ceil32(return_data.size) + 32
                    t = mem[64] + 64
                    while idx < _6461:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _6870 + (32 * _6461) + -mem[64] + 64
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 257 len 32 * (2 * var125003) + 1] = call.data[calldata.size len 32 * (2 * var125003) + 1]
                if 0 >= (2 * var125003) + 1:
                    revert with 'NH{q', 50
                mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 257] = wethAddress
                s = 0
                t = 1
                while s < var125003:
                    if s >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 224]:
                        revert with 'NH{q', 50
                    _4841 = mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 256]
                    require ext_code.size(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20])
                    staticcall mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + 268 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4871 = mem[_4859]
                    require mem[_4859] == mem[_4859 + 12 len 20]
                    require ext_code.size(address(_4841))
                    staticcall address(_4841).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4947 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4955 = mem[_4947]
                    require mem[_4947] == mem[_4947 + 12 len 20]
                    if address(_4871) == wethAddress:
                        if mem[_4947 + 12 len 20] == wethAddress:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t
                            continue 
                        if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 257] = mem[_4947 + 12 len 20]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 257] = address(_4871)
                    if t == -1:
                        revert with 'NH{q', 17
                    if address(_4955) == wethAddress:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                    if t + 1 >= mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 257] = address(_4955)
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + 2
                    continue 
                _4818 = mem[64]
                mem[mem[64] + 32] = 32
                _4858 = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 225]
                idx = 0
                s = (2 * ceil32(return_data.size)) + (64 * ext_call.return_data[0]) + floor32(var125003) + 257
                u = mem[64] + 96
                while idx < _4858:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                _5458 = mem[64]
                mem[mem[64]] = _4818 + (32 * _4858) + -mem[64] + 64
                mem[64] = _4818 + (32 * _4858) + 96
                mem[_5458 + 64] = t
                _5459 = mem[_5458]
                require mem[_5458] >= 32
                _5471 = mem[_5458 + 32]
                require mem[_5458 + 32] <= test266151307()
                require _5458 + mem[_5458 + 32] + 63 < _5458 + mem[_5458] + 32
                _5479 = mem[_5458 + mem[_5458 + 32] + 32]
                if mem[_5458 + mem[_5458 + 32] + 32] > test266151307():
                    revert with 'NH{q', 65
                if _4818 + (32 * _4858) + floor32(mem[_5458 + mem[_5458 + 32] + 32]) + 97 > test266151307() or floor32(mem[_5458 + mem[_5458 + 32] + 32]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = _4818 + (32 * _4858) + floor32(mem[_5458 + mem[_5458 + 32] + 32]) + 97
                mem[_4818 + (32 * _4858) + 96] = _5479
                require _5471 + (32 * _5479) + 64 <= _5459 + 32
                idx = 0
                s = _5458 + _5471 + 64
                t = _4818 + (32 * _4858) + 128
                while idx < _5479:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5967 = mem[64]
                mem[mem[64]] = 0xd9f5ff4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5479
                idx = 0
                s = _4818 + (32 * _4858) + 128
                t = mem[64] + 68
                while idx < _5479:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _5967 + (32 * _5479) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6439 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6447 = mem[_6439]
                require mem[_6439] <= test266151307()
                require _6439 + mem[_6439] + 31 < _6439 + return_data.size
                _6462 = mem[_6439 + mem[_6439]]
                if mem[_6439 + mem[_6439]] > test266151307():
                    revert with 'NH{q', 65
                if _6439 + ceil32(return_data.size) + floor32(mem[_6439 + mem[_6439]]) + 1 > test266151307() or floor32(mem[_6439 + mem[_6439]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _6439 + ceil32(return_data.size) + floor32(mem[_6439 + mem[_6439]]) + 1
                mem[_6439 + ceil32(return_data.size)] = _6462
                require _6447 + (32 * _6462) + 32 <= return_data.size
                idx = 0
                s = _6439 + _6447 + 32
                t = _6439 + ceil32(return_data.size) + 32
                while idx < _6462:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6871 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _6462
                idx = 0
                s = _6439 + ceil32(return_data.size) + 32
                t = mem[64] + 64
                while idx < _6462:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _6871 + (32 * _6462) + -mem[64] + 64
}



}
