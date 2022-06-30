contract main {




// =====================  Runtime code  =====================


#
#  - sub_d87d7df0(?)
#
uint8 stor0;
uint256 stor1;
array of address stor2;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor5;
mapping of uint8 stor6;

function _fallback() payable {
  stop
}

function sub_855ec0ef(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor6[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    stor1 = arg1
}

function sub_799aeda0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor6[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    stor6[address(arg1)] = 0
}

function addOwnerToList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor6[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    stor6[address(arg1)] = 1
}

function sub_ea85c736(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < arg1:
        mem[96 len 223] = code.data[12451 len 223]
        create contract with 0 wei
                        code: code.data[12451 len 223]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor2.length++
        mem[0] = 2
        stor2[stor2.length] = address(create.new_address)
        stor4++
        idx = idx + 1
        continue 
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_1c61069c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor6[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call msg.sender with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_bdfdc0d1(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor0:
        revert with 0, 'CONTRACT_NOT_CONFIGURATED'
    if stor1 <= 0:
        revert with 0, 'NULL_MIN_PROFIT'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_22] == mem[_22 + 12 len 20]
        mem[0] = mem[_22 + 12 len 20]
        mem[32] = 5
        if not stor5[mem[0]]:
            revert with 0, 'SWAP_FEE_NOT_SET'
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 6
        if not stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
            revert with 0, 'WRONG_OWNER'
        idx = idx + 1
        continue 
    return 1
}

function sub_f91524b6(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg3))
    staticcall address(arg3).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor5[ext_call.return_data[12 len 20]] <= 0:
        revert with 0, '13'
    if address(arg1) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        if address(arg1) == address(arg1):
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])):
                return 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])), 
                       stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))
        else:
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                return 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])), 
                       stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))
    else:
        if address(arg1) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])):
                return 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])), 
                       stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))
        else:
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                return 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])), 
                       stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))
    revert
}

function sub_0128f96f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if not stor6[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    require ('cd', 4).length >= 32
    require ('cd', 4)[0] <= test266151307()
    require ('cd', 4).length - ('cd', 4)[0] >= 160
    require cd[(cd[4] + ('cd', 4)[0] + 36)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 67 < cd[4] + ('cd', 4).length + 36
    require cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + 448 >= 416 and (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + 448 <= test266151307()
    require ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + 68 <= ('cd', 4).length + 36
    idx = 0
    s = cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 68
    t = 448
    while idx < cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(cd[4] + ('cd', 4)[0] + 68)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 67 < cd[4] + ('cd', 4).length + 36
    require cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]) + 480 >= 448 and (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]) + 480 <= test266151307()
    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + 448] = cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]
    require ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]) + 68 <= ('cd', 4).length + 36
    idx = 0
    s = cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 68
    t = (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + 480
    while idx < cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(cd[4] + ('cd', 4)[0] + 100)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 67 < cd[4] + ('cd', 4).length + 36
    require cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]) + 512 >= 480 and (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]) + 512 <= test266151307()
    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]) + 480] = cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]
    require ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]) + 68 <= ('cd', 4).length + 36
    idx = 0
    s = cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 68
    t = (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]) + 512
    while idx < cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(cd[4] + ('cd', 4)[0] + 132)] == cd[(cd[4] + ('cd', 4)[0] + 132)]
    require cd[(cd[4] + ('cd', 4)[0] + 164)] == cd[(cd[4] + ('cd', 4)[0] + 164)]
    idx = 0
    while idx < cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]:
        require idx < cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]
        require idx < cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]
        mem[0] = mem[(32 * idx) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + 492 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + 492 len 20]] = mem[(32 * idx) + 448]
        idx = idx + 1
        continue 
    idx = 0
    while idx < cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]:
        require idx < cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]
        mem[0] = mem[(32 * idx) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]) + 524 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]) + 524 len 20]] = 1
        idx = idx + 1
        continue 
    stor1 = cd[(cd[4] + ('cd', 4)[0] + 132)]
    if stor0:
        if cd[(cd[4] + ('cd', 4)[0] + 164)] > 0:
            idx = 0
            while idx < cd[(cd[4] + ('cd', 4)[0] + 164)]:
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]) + 512 len 223] = code.data[12451 len 223]
                create contract with 0 wei
                                code: code.data[12451 len 223]
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                stor2.length++
                mem[0] = 2
                stor2[stor2.length] = address(create.new_address)
                stor4++
                idx = idx + 1
                continue 
    stor0 = 0
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[0] = arg1
    mem[32] = 6
    if not stor6[address(arg1)]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    if msg.sender != 0xd528697008ac67a21818751a5e3c58c8dae54696:
        revert with 0, 'ERR_NOT_ALLOWED_SENDER'
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 > ext_call.return_data[0]:
        revert with 0, '10'
    require arg5.length >= 96
    require cd[(arg5 + 36)] <= test266151307()
    require arg5 + cd[(arg5 + 36)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 >= 96 and ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 <= test266151307()
    mem[ceil32(return_data.size) + 96] = cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require cd[(arg5 + 36)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 36)] + 68
    t = ceil32(return_data.size) + 128
    while idx < cd[(arg5 + cd[(arg5 + 36)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg5 + 68)] <= test266151307()
    require arg5 + cd[(arg5 + 68)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 68)] + 36)] <= test266151307()
    require (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160 >= 128 and ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160 <= test266151307()
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128] = cd[(arg5 + cd[(arg5 + 68)] + 36)]
    require cd[(arg5 + 68)] + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 68)] + 68
    t = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160
    while idx < cd[(arg5 + cd[(arg5 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg5 + 100)] == cd[(arg5 + 100)]
    require 0 < cd[(arg5 + cd[(arg5 + 68)] + 36)]
    _166 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
    require 0 < cd[(arg5 + cd[(arg5 + 36)] + 36)]
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 164] = mem[ceil32(return_data.size) + 140 len 20]
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 196] = cd[(arg5 + 100)]
    require ext_code.size(address(_166))
    call address(_166).0xa9059cbb with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 140 len 20], cd[(arg5 + 100)]
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = cd[(arg5 + 100)]
    while idx < cd[(arg5 + cd[(arg5 + 36)] + 36)] - 1:
        require idx < mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
        _267 = mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
        require idx + 1 < mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
        _270 = mem[(32 * idx + 1) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
        require idx < mem[ceil32(return_data.size) + 96]
        _272 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require idx + 1 < mem[ceil32(return_data.size) + 96]
        _274 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]:
            _280 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_280] == mem[_280 + 12 len 20]
            mem[0] = mem[_280 + 12 len 20]
            mem[32] = 5
            _287 = sha3(mem[0], 5)
            if stor5[mem[0]] <= 0:
                revert with 0, '13'
            require ext_code.size(address(_272))
            staticcall address(_272).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _296 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _298 = mem[_296]
            require mem[_296] == mem[_296 + 18 len 14]
            _303 = mem[_296 + 32]
            require mem[_296 + 32] == mem[_296 + 50 len 14]
            require mem[_296 + 64] == mem[_296 + 92 len 4]
            if address(_267) == address(_267):
                require (1000 * mem[_296 + 18 len 14]) + (stor5[mem[0]] * s)
                if address(_267) == address(_267):
                    _307 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_307 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_307 + 36] = 0
                    mem[_307 + 68] = stor5[mem[0]] * s * Mask(112, 0, _303) / (1000 * Mask(112, 0, _298)) + (stor5[mem[0]] * s)
                    mem[_307 + 100] = address(_274)
                    mem[_307 + 132] = 128
                    mem[_307 + 164] = mem[_307]
                    t = 0
                    while t < mem[_307]:
                        mem[t + _307 + 196] = mem[t + _307 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_307]) > mem[_307]:
                        mem[mem[_307] + _307 + 196] = 0
                    require ext_code.size(address(_272))
                    call address(_272).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, stor5[mem[0]] * s * Mask(112, 0, _303) / (1000 * Mask(112, 0, _298)) + (stor5[mem[0]] * s), address(_274), 128, mem[_307], mem[_307 + 196 len ceil32(mem[_307])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = stor5[mem[0]] * s * Mask(112, 0, _303) / (1000 * Mask(112, 0, _298)) + (stor5[mem[0]] * s)
                    continue 
                _308 = mem[64]
                mem[64] = mem[64] + 32
                mem[_308 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_308 + 36] = stor5[mem[0]] * s * Mask(112, 0, _303) / (1000 * Mask(112, 0, _298)) + (stor5[mem[0]] * s)
                mem[_308 + 68] = 0
                mem[_308 + 100] = address(_274)
                mem[_308 + 132] = 128
                mem[_308 + 164] = mem[_308]
                t = 0
                while t < mem[_308]:
                    mem[t + _308 + 196] = mem[t + _308 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_308]) > mem[_308]:
                    mem[mem[_308] + _308 + 196] = 0
                require ext_code.size(address(_272))
                call address(_272).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[_308 + 36], 0, address(_274), 128, mem[_308], mem[_308 + 196 len ceil32(mem[_308])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = stor[_287] * s * Mask(112, 0, _303) / (1000 * Mask(112, 0, _298)) + (stor[_287] * s)
                continue 
            require (1000 * mem[_296 + 50 len 14]) + (stor5[mem[0]] * s)
            if address(_267) == address(_267):
                _309 = mem[64]
                mem[64] = mem[64] + 32
                mem[_309 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_309 + 36] = 0
                mem[_309 + 68] = stor5[mem[0]] * s * Mask(112, 0, _298) / (1000 * Mask(112, 0, _303)) + (stor5[mem[0]] * s)
                mem[_309 + 100] = address(_274)
                mem[_309 + 132] = 128
                mem[_309 + 164] = mem[_309]
                t = 0
                while t < mem[_309]:
                    mem[t + _309 + 196] = mem[t + _309 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_309]) > mem[_309]:
                    mem[mem[_309] + _309 + 196] = 0
                require ext_code.size(address(_272))
                call address(_272).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, mem[_309 + 68], address(_274), 128, mem[_309], mem[_309 + 196 len ceil32(mem[_309])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = stor[_287] * s * Mask(112, 0, _298) / (1000 * Mask(112, 0, _303)) + (stor[_287] * s)
                continue 
            _310 = mem[64]
            mem[64] = mem[64] + 32
            mem[_310 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_310 + 36] = stor5[mem[0]] * s * Mask(112, 0, _298) / (1000 * Mask(112, 0, _303)) + (stor5[mem[0]] * s)
            mem[_310 + 68] = 0
            mem[_310 + 100] = address(_274)
            mem[_310 + 132] = 128
            mem[_310 + 164] = mem[_310]
            t = 0
            while t < mem[_310]:
                mem[t + _310 + 196] = mem[t + _310 + 32]
                t = t + 32
                continue 
            if ceil32(mem[_310]) > mem[_310]:
                mem[mem[_310] + _310 + 196] = 0
            require ext_code.size(address(_272))
            call address(_272).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args stor5[mem[0]] * s * Mask(112, 0, _298) / (1000 * Mask(112, 0, _303)) + (stor5[mem[0]] * s), 0, address(_274), 128, mem[_310], mem[_310 + 196 len ceil32(mem[_310])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor5[mem[0]] * s * Mask(112, 0, _298) / (1000 * Mask(112, 0, _303)) + (stor5[mem[0]] * s)
            continue 
        _281 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_281] == mem[_281 + 12 len 20]
        mem[0] = mem[_281 + 12 len 20]
        mem[32] = 5
        _288 = sha3(mem[0], 5)
        if stor5[mem[0]] <= 0:
            revert with 0, '13'
        require ext_code.size(address(_272))
        staticcall address(_272).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _297 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _299 = mem[_297]
        require mem[_297] == mem[_297 + 18 len 14]
        _304 = mem[_297 + 32]
        require mem[_297 + 32] == mem[_297 + 50 len 14]
        require mem[_297 + 64] == mem[_297 + 92 len 4]
        if address(_267) == address(_270):
            require (1000 * mem[_297 + 18 len 14]) + (stor5[mem[0]] * s)
            if address(_267) == address(_270):
                _311 = mem[64]
                mem[64] = mem[64] + 32
                mem[_311 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_311 + 36] = 0
                mem[_311 + 68] = stor5[mem[0]] * s * Mask(112, 0, _304) / (1000 * Mask(112, 0, _299)) + (stor5[mem[0]] * s)
                mem[_311 + 100] = address(_274)
                mem[_311 + 132] = 128
                mem[_311 + 164] = mem[_311]
                t = 0
                while t < mem[_311]:
                    mem[t + _311 + 196] = mem[t + _311 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_311]) > mem[_311]:
                    mem[mem[_311] + _311 + 196] = 0
                require ext_code.size(address(_272))
                call address(_272).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, stor5[mem[0]] * s * Mask(112, 0, _304) / (1000 * Mask(112, 0, _299)) + (stor5[mem[0]] * s), address(_274), 128, mem[_311], mem[_311 + 196 len ceil32(mem[_311])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = stor5[mem[0]] * s * Mask(112, 0, _304) / (1000 * Mask(112, 0, _299)) + (stor5[mem[0]] * s)
                continue 
            _312 = mem[64]
            mem[64] = mem[64] + 32
            mem[_312 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_312 + 36] = stor5[mem[0]] * s * Mask(112, 0, _304) / (1000 * Mask(112, 0, _299)) + (stor5[mem[0]] * s)
            mem[_312 + 68] = 0
            mem[_312 + 100] = address(_274)
            mem[_312 + 132] = 128
            mem[_312 + 164] = mem[_312]
            t = 0
            while t < mem[_312]:
                mem[t + _312 + 196] = mem[t + _312 + 32]
                t = t + 32
                continue 
            if ceil32(mem[_312]) > mem[_312]:
                mem[mem[_312] + _312 + 196] = 0
            require ext_code.size(address(_272))
            call address(_272).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[_312 + 36], 0, address(_274), 128, mem[_312], mem[_312 + 196 len ceil32(mem[_312])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor[_288] * s * Mask(112, 0, _304) / (1000 * Mask(112, 0, _299)) + (stor[_288] * s)
            continue 
        require (1000 * mem[_297 + 50 len 14]) + (stor5[mem[0]] * s)
        if address(_267) == address(_270):
            _313 = mem[64]
            mem[64] = mem[64] + 32
            mem[_313 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_313 + 36] = 0
            mem[_313 + 68] = stor5[mem[0]] * s * Mask(112, 0, _299) / (1000 * Mask(112, 0, _304)) + (stor5[mem[0]] * s)
            mem[_313 + 100] = address(_274)
            mem[_313 + 132] = 128
            mem[_313 + 164] = mem[_313]
            t = 0
            while t < mem[_313]:
                mem[t + _313 + 196] = mem[t + _313 + 32]
                t = t + 32
                continue 
            if ceil32(mem[_313]) > mem[_313]:
                mem[mem[_313] + _313 + 196] = 0
            require ext_code.size(address(_272))
            call address(_272).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[_313 + 68], address(_274), 128, mem[_313], mem[_313 + 196 len ceil32(mem[_313])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor[_288] * s * Mask(112, 0, _299) / (1000 * Mask(112, 0, _304)) + (stor[_288] * s)
            continue 
        _314 = mem[64]
        mem[64] = mem[64] + 32
        mem[_314 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_314 + 36] = stor5[mem[0]] * s * Mask(112, 0, _299) / (1000 * Mask(112, 0, _304)) + (stor5[mem[0]] * s)
        mem[_314 + 68] = 0
        mem[_314 + 100] = address(_274)
        mem[_314 + 132] = 128
        mem[_314 + 164] = mem[_314]
        t = 0
        while t < mem[_314]:
            mem[t + _314 + 196] = mem[t + _314 + 32]
            t = t + 32
            continue 
        if ceil32(mem[_314]) > mem[_314]:
            mem[mem[_314] + _314 + 196] = 0
        require ext_code.size(address(_272))
        call address(_272).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor5[mem[0]] * s * Mask(112, 0, _299) / (1000 * Mask(112, 0, _304)) + (stor5[mem[0]] * s), 0, address(_274), 128, mem[_314], mem[_314 + 196 len ceil32(mem[_314])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = stor5[mem[0]] * s * Mask(112, 0, _299) / (1000 * Mask(112, 0, _304)) + (stor5[mem[0]] * s)
        continue 
    if s < cd[(arg5 + 100)] + stor1:
        revert with 0, '12'
    mem[mem[64] + 4] = 0xd528697008ac67a21818751a5e3c58c8dae54696
    mem[mem[64] + 36] = arg4 + arg3
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args 0xd528697008ac67a21818751a5e3c58c8dae54696, arg4 + arg3
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _285 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_285] == bool(mem[_285])
    if not mem[_285]:
        revert with 0, '11'
}

function sub_3678e3fc(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg4))
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg4))
    staticcall address(arg4).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor5[ext_call.return_data[12 len 20]] <= 0:
        revert with 0, '13'
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(arg1):
        if address(arg1) < address(arg2):
            if address(arg1) == address(arg1):
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if stor5[ext_call.return_data[12 len 20]] <= 0:
                        revert with 0, '13'
                    if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                        if address(arg2) == address(arg2):
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                    else:
                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
            else:
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if stor5[ext_call.return_data[12 len 20]] <= 0:
                        revert with 0, '13'
                    if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                        if address(arg2) == address(arg2):
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                    else:
                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
        else:
            if address(arg2) == address(arg1):
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if stor5[ext_call.return_data[12 len 20]] <= 0:
                        revert with 0, '13'
                    if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                        if address(arg2) == address(arg2):
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                    else:
                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
            else:
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if stor5[ext_call.return_data[12 len 20]] <= 0:
                        revert with 0, '13'
                    if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                        if address(arg2) == address(arg2):
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                    else:
                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                       stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
    else:
        if address(arg1) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if address(arg1) < address(arg2):
                if address(arg1) == address(arg1):
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if stor5[ext_call.return_data[12 len 20]] <= 0:
                            revert with 0, '13'
                        if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            if address(arg2) == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                else:
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if stor5[ext_call.return_data[12 len 20]] <= 0:
                            revert with 0, '13'
                        if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            if address(arg2) == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
            else:
                if address(arg2) == address(arg1):
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if stor5[ext_call.return_data[12 len 20]] <= 0:
                            revert with 0, '13'
                        if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            if address(arg2) == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                else:
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if stor5[ext_call.return_data[12 len 20]] <= 0:
                            revert with 0, '13'
                        if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            if address(arg2) == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                        else:
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])))
        else:
            if address(arg1) < address(arg2):
                if address(arg1) == address(arg1):
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])):
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if stor5[ext_call.return_data[12 len 20]] <= 0:
                            revert with 0, '13'
                        if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            if address(arg2) == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                        else:
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                else:
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])):
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if stor5[ext_call.return_data[12 len 20]] <= 0:
                            revert with 0, '13'
                        if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            if address(arg2) == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                        else:
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
            else:
                if address(arg2) == address(arg1):
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])):
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if stor5[ext_call.return_data[12 len 20]] <= 0:
                            revert with 0, '13'
                        if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            if address(arg2) == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                        else:
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                else:
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])):
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if stor5[ext_call.return_data[12 len 20]] <= 0:
                            revert with 0, '13'
                        if address(arg2) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            if address(arg2) == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                        else:
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg2):
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
                            else:
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))):
                                    return 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))), 
                                           stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])))
    revert
}

function sub_33f44a6c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor6[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg3))
    staticcall address(arg3).factory() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor5[ext_call.return_data[12 len 20]] <= 0:
        revert with 0, '13'
    if address(arg1) < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        if address(arg1) == address(arg1):
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))
            if 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) <= stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])):
                require ext_code.size(address(arg2))
                staticcall address(arg2).factory() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[0] = ext_call.return_data[12 len 20]
                mem[32] = 5
                if stor5[ext_call.return_data[12 len 20]] <= 0:
                    revert with 0, '13'
                s = (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]]) + 1 / 2
                t = 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]]
                while s < t:
                    require s
                    s = (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]] / s) + s / 2
                    t = s
                    continue 
                if t > 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])):
                    require stor5[ext_call.return_data[12 len 20]]
                    require (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) + (stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]])
                    if stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) / (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) + (stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) >= (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                        if t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]:
                            mem[(6 * ceil32(return_data.size)) + 96] = 3
                            mem[(6 * ceil32(return_data.size)) + 128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[(6 * ceil32(return_data.size)) + 160] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[(6 * ceil32(return_data.size)) + 224] = 3
                            mem[(6 * ceil32(return_data.size)) + 256] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 288] = address(arg3)
                            mem[(6 * ceil32(return_data.size)) + 320] = this.address
                            mem[(6 * ceil32(return_data.size)) + 356] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 352
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]] <= ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + 356] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 388] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]
                                mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (9 * ceil32(return_data.size)) + 352
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[mem[0]]
                                while idx < 2:
                                    require idx < mem[(6 * ceil32(return_data.size)) + 96]
                                    _765 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 96]
                                    _776 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 128]
                                    require idx < mem[(6 * ceil32(return_data.size)) + 224]
                                    _784 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 256]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 224]
                                    _797 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 256]
                                    require ext_code.size(mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20])
                                    staticcall mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20].factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 140 len 20] < mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 140 len 20]:
                                        _864 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_864] == mem[_864 + 12 len 20]
                                        mem[0] = mem[_864 + 12 len 20]
                                        mem[32] = 5
                                        _888 = sha3(mem[0], 5)
                                        if stor5[mem[0]] <= 0:
                                            revert with 0, '13'
                                        require ext_code.size(address(_784))
                                        staticcall address(_784).getReserves() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _920 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _928 = mem[_920]
                                        require mem[_920] == mem[_920 + 18 len 14]
                                        _948 = mem[_920 + 32]
                                        require mem[_920 + 32] == mem[_920 + 50 len 14]
                                        require mem[_920 + 64] == mem[_920 + 92 len 4]
                                        if address(_765) == address(_765):
                                            require (1000 * mem[_920 + 18 len 14]) + (stor5[mem[0]] * s)
                                            if address(_765) == address(_765):
                                                _1040 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_1040 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_1040 + 36] = 0
                                                mem[_1040 + 68] = stor5[mem[0]] * s * Mask(112, 0, _948) / (1000 * Mask(112, 0, _928)) + (stor5[mem[0]] * s)
                                                mem[_1040 + 100] = address(_797)
                                                mem[_1040 + 132] = 128
                                                mem[_1040 + 164] = mem[_1040]
                                                t = 0
                                                while t < mem[_1040]:
                                                    mem[t + _1040 + 196] = mem[t + _1040 + 32]
                                                    t = t + 32
                                                    continue 
                                                if ceil32(mem[_1040]) > mem[_1040]:
                                                    mem[mem[_1040] + _1040 + 196] = 0
                                                require ext_code.size(address(_784))
                                                call address(_784).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, mem[_1040 + 68], address(_797), 128, mem[_1040], mem[_1040 + 196 len ceil32(mem[_1040])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = stor[_888] * s * Mask(112, 0, _948) / (1000 * Mask(112, 0, _928)) + (stor[_888] * s)
                                                continue 
                                            _1041 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1041 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1041 + 36] = stor5[mem[0]] * s * Mask(112, 0, _948) / (1000 * Mask(112, 0, _928)) + (stor5[mem[0]] * s)
                                            mem[_1041 + 68] = 0
                                            mem[_1041 + 100] = address(_797)
                                            mem[_1041 + 132] = 128
                                            mem[_1041 + 164] = mem[_1041]
                                            t = 0
                                            while t < mem[_1041]:
                                                mem[t + _1041 + 196] = mem[t + _1041 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1041]) > mem[_1041]:
                                                mem[mem[_1041] + _1041 + 196] = 0
                                            require ext_code.size(address(_784))
                                            call address(_784).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args stor5[mem[0]] * s * Mask(112, 0, _948) / (1000 * Mask(112, 0, _928)) + (stor5[mem[0]] * s), 0, address(_797), 128, mem[_1041], mem[_1041 + 196 len ceil32(mem[_1041])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor5[mem[0]] * s * Mask(112, 0, _948) / (1000 * Mask(112, 0, _928)) + (stor5[mem[0]] * s)
                                            continue 
                                        require (1000 * mem[_920 + 50 len 14]) + (stor5[mem[0]] * s)
                                        if address(_765) == address(_765):
                                            _1042 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1042 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1042 + 36] = 0
                                            mem[_1042 + 68] = stor5[mem[0]] * s * Mask(112, 0, _928) / (1000 * Mask(112, 0, _948)) + (stor5[mem[0]] * s)
                                            mem[_1042 + 100] = address(_797)
                                            mem[_1042 + 132] = 128
                                            mem[_1042 + 164] = mem[_1042]
                                            t = 0
                                            while t < mem[_1042]:
                                                mem[t + _1042 + 196] = mem[t + _1042 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1042]) > mem[_1042]:
                                                mem[mem[_1042] + _1042 + 196] = 0
                                            require ext_code.size(address(_784))
                                            call address(_784).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, stor5[mem[0]] * s * Mask(112, 0, _928) / (1000 * Mask(112, 0, _948)) + (stor5[mem[0]] * s), address(_797), 128, mem[_1042], mem[_1042 + 196 len ceil32(mem[_1042])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor5[mem[0]] * s * Mask(112, 0, _928) / (1000 * Mask(112, 0, _948)) + (stor5[mem[0]] * s)
                                            continue 
                                        _1043 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1043 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1043 + 36] = stor5[mem[0]] * s * Mask(112, 0, _928) / (1000 * Mask(112, 0, _948)) + (stor5[mem[0]] * s)
                                        mem[_1043 + 68] = 0
                                        mem[_1043 + 100] = address(_797)
                                        mem[_1043 + 132] = 128
                                        mem[_1043 + 164] = mem[_1043]
                                        t = 0
                                        while t < mem[_1043]:
                                            mem[t + _1043 + 196] = mem[t + _1043 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1043]) > mem[_1043]:
                                            mem[mem[_1043] + _1043 + 196] = 0
                                        require ext_code.size(address(_784))
                                        call address(_784).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[_1043 + 36], 0, address(_797), 128, mem[_1043], mem[_1043 + 196 len ceil32(mem[_1043])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor[_888] * s * Mask(112, 0, _928) / (1000 * Mask(112, 0, _948)) + (stor[_888] * s)
                                        continue 
                                    _865 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_865] == mem[_865 + 12 len 20]
                                    mem[0] = mem[_865 + 12 len 20]
                                    mem[32] = 5
                                    _889 = sha3(mem[0], 5)
                                    if stor5[mem[0]] <= 0:
                                        revert with 0, '13'
                                    require ext_code.size(address(_784))
                                    staticcall address(_784).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _921 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _929 = mem[_921]
                                    require mem[_921] == mem[_921 + 18 len 14]
                                    _949 = mem[_921 + 32]
                                    require mem[_921 + 32] == mem[_921 + 50 len 14]
                                    require mem[_921 + 64] == mem[_921 + 92 len 4]
                                    if address(_765) == address(_776):
                                        require (1000 * mem[_921 + 18 len 14]) + (stor5[mem[0]] * s)
                                        if address(_765) == address(_776):
                                            _1044 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1044 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1044 + 36] = 0
                                            mem[_1044 + 68] = stor5[mem[0]] * s * Mask(112, 0, _949) / (1000 * Mask(112, 0, _929)) + (stor5[mem[0]] * s)
                                            mem[_1044 + 100] = address(_797)
                                            mem[_1044 + 132] = 128
                                            mem[_1044 + 164] = mem[_1044]
                                            t = 0
                                            while t < mem[_1044]:
                                                mem[t + _1044 + 196] = mem[t + _1044 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1044]) > mem[_1044]:
                                                mem[mem[_1044] + _1044 + 196] = 0
                                            require ext_code.size(address(_784))
                                            call address(_784).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, mem[_1044 + 68], address(_797), 128, mem[_1044], mem[_1044 + 196 len ceil32(mem[_1044])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor[_889] * s * Mask(112, 0, _949) / (1000 * Mask(112, 0, _929)) + (stor[_889] * s)
                                            continue 
                                        _1045 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1045 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1045 + 36] = stor5[mem[0]] * s * Mask(112, 0, _949) / (1000 * Mask(112, 0, _929)) + (stor5[mem[0]] * s)
                                        mem[_1045 + 68] = 0
                                        mem[_1045 + 100] = address(_797)
                                        mem[_1045 + 132] = 128
                                        mem[_1045 + 164] = mem[_1045]
                                        t = 0
                                        while t < mem[_1045]:
                                            mem[t + _1045 + 196] = mem[t + _1045 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1045]) > mem[_1045]:
                                            mem[mem[_1045] + _1045 + 196] = 0
                                        require ext_code.size(address(_784))
                                        call address(_784).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args stor5[mem[0]] * s * Mask(112, 0, _949) / (1000 * Mask(112, 0, _929)) + (stor5[mem[0]] * s), 0, address(_797), 128, mem[_1045], mem[_1045 + 196 len ceil32(mem[_1045])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor5[mem[0]] * s * Mask(112, 0, _949) / (1000 * Mask(112, 0, _929)) + (stor5[mem[0]] * s)
                                        continue 
                                    require (1000 * mem[_921 + 50 len 14]) + (stor5[mem[0]] * s)
                                    if address(_765) == address(_776):
                                        _1046 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1046 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1046 + 36] = 0
                                        mem[_1046 + 68] = stor5[mem[0]] * s * Mask(112, 0, _929) / (1000 * Mask(112, 0, _949)) + (stor5[mem[0]] * s)
                                        mem[_1046 + 100] = address(_797)
                                        mem[_1046 + 132] = 128
                                        mem[_1046 + 164] = mem[_1046]
                                        t = 0
                                        while t < mem[_1046]:
                                            mem[t + _1046 + 196] = mem[t + _1046 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1046]) > mem[_1046]:
                                            mem[mem[_1046] + _1046 + 196] = 0
                                        require ext_code.size(address(_784))
                                        call address(_784).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, stor5[mem[0]] * s * Mask(112, 0, _929) / (1000 * Mask(112, 0, _949)) + (stor5[mem[0]] * s), address(_797), 128, mem[_1046], mem[_1046 + 196 len ceil32(mem[_1046])]
                                    else:
                                        _1047 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1047 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1047 + 36] = stor5[mem[0]] * s * Mask(112, 0, _929) / (1000 * Mask(112, 0, _949)) + (stor5[mem[0]] * s)
                                        mem[_1047 + 68] = 0
                                        mem[_1047 + 100] = address(_797)
                                        mem[_1047 + 132] = 128
                                        mem[_1047 + 164] = mem[_1047]
                                        t = 0
                                        while t < mem[_1047]:
                                            mem[t + _1047 + 196] = mem[t + _1047 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1047]) > mem[_1047]:
                                            mem[mem[_1047] + _1047 + 196] = 0
                                        require ext_code.size(address(_784))
                                        call address(_784).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args stor5[mem[0]] * s * Mask(112, 0, _929) / (1000 * Mask(112, 0, _949)) + (stor5[mem[0]] * s), 0, address(_797), 128, mem[_1047], mem[_1047 + 196 len ceil32(mem[_1047])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = stor5[mem[0]] * s * Mask(112, 0, _929) / (1000 * Mask(112, 0, _949)) + (stor5[mem[0]] * s)
                                    continue 
                                if s < (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                                    revert with 0, '12'
                                _796 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_796] = 0
                                mem[_796 + 32] = 0
                                _804 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_804] = stor3
                                mem[_804 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_804]
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[mem[64]] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = mem[_804] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_804 + 32]
                            else:
                                mem[(7 * ceil32(return_data.size)) + 384] = 96
                                mem[(7 * ceil32(return_data.size)) + 480] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 256
                                u = (7 * ceil32(return_data.size)) + 512
                                while idx < 3:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 416] = 224
                                mem[(7 * ceil32(return_data.size)) + 608] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 128
                                u = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + 224]) + 544
                                while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 448] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]
                                _1332 = mem[64]
                                mem[mem[64]] = (7 * ceil32(return_data.size)) + -mem[64] + 704
                                mem[64] = (7 * ceil32(return_data.size)) + 736
                                mem[(7 * ceil32(return_data.size)) + 736] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 740] = this.address
                                mem[(7 * ceil32(return_data.size)) + 772] = (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1
                                mem[(7 * ceil32(return_data.size)) + 804] = 96
                                _1384 = mem[_1332]
                                mem[(7 * ceil32(return_data.size)) + 836] = mem[_1332]
                                mem[(7 * ceil32(return_data.size)) + 868 len ceil32(_1384)] = mem[_1332 + 32 len ceil32(_1384)]
                                if ceil32(_1384) > _1384:
                                    mem[_1384 + (7 * ceil32(return_data.size)) + 868] = 0
                                require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                                call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1, 96, mem[(7 * ceil32(return_data.size)) + 836 len ceil32(_1384) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = stor3
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[(7 * ceil32(return_data.size)) + 864] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = stor3 + (gas_remaining / 20 * 3600) + 1
        else:
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))
            if 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) <= stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                require ext_code.size(address(arg2))
                staticcall address(arg2).factory() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[0] = ext_call.return_data[12 len 20]
                mem[32] = 5
                if stor5[ext_call.return_data[12 len 20]] <= 0:
                    revert with 0, '13'
                s = (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]]) + 1 / 2
                t = 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]]
                while s < t:
                    require s
                    s = (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]] / s) + s / 2
                    t = s
                    continue 
                if t > 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                    require stor5[ext_call.return_data[12 len 20]]
                    require (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) + (stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]])
                    if stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) / (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) + (stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) >= (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                        if t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]:
                            mem[(6 * ceil32(return_data.size)) + 96] = 3
                            mem[(6 * ceil32(return_data.size)) + 128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[(6 * ceil32(return_data.size)) + 160] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[(6 * ceil32(return_data.size)) + 224] = 3
                            mem[(6 * ceil32(return_data.size)) + 256] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 288] = address(arg3)
                            mem[(6 * ceil32(return_data.size)) + 320] = this.address
                            mem[(6 * ceil32(return_data.size)) + 356] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 352
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]] <= ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + 356] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 388] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]
                                mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (9 * ceil32(return_data.size)) + 352
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[mem[0]]
                                while idx < 2:
                                    require idx < mem[(6 * ceil32(return_data.size)) + 96]
                                    _768 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 96]
                                    _778 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 128]
                                    require idx < mem[(6 * ceil32(return_data.size)) + 224]
                                    _787 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 256]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 224]
                                    _799 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 256]
                                    require ext_code.size(mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20])
                                    staticcall mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20].factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 140 len 20] < mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 140 len 20]:
                                        _866 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_866] == mem[_866 + 12 len 20]
                                        mem[0] = mem[_866 + 12 len 20]
                                        mem[32] = 5
                                        _890 = sha3(mem[0], 5)
                                        if stor5[mem[0]] <= 0:
                                            revert with 0, '13'
                                        require ext_code.size(address(_787))
                                        staticcall address(_787).getReserves() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _922 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _930 = mem[_922]
                                        require mem[_922] == mem[_922 + 18 len 14]
                                        _950 = mem[_922 + 32]
                                        require mem[_922 + 32] == mem[_922 + 50 len 14]
                                        require mem[_922 + 64] == mem[_922 + 92 len 4]
                                        if address(_768) == address(_768):
                                            require (1000 * mem[_922 + 18 len 14]) + (stor5[mem[0]] * s)
                                            if address(_768) == address(_768):
                                                _1052 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_1052 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_1052 + 36] = 0
                                                mem[_1052 + 68] = stor5[mem[0]] * s * Mask(112, 0, _950) / (1000 * Mask(112, 0, _930)) + (stor5[mem[0]] * s)
                                                mem[_1052 + 100] = address(_799)
                                                mem[_1052 + 132] = 128
                                                mem[_1052 + 164] = mem[_1052]
                                                t = 0
                                                while t < mem[_1052]:
                                                    mem[t + _1052 + 196] = mem[t + _1052 + 32]
                                                    t = t + 32
                                                    continue 
                                                if ceil32(mem[_1052]) > mem[_1052]:
                                                    mem[mem[_1052] + _1052 + 196] = 0
                                                require ext_code.size(address(_787))
                                                call address(_787).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, mem[_1052 + 68], address(_799), 128, mem[_1052], mem[_1052 + 196 len ceil32(mem[_1052])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = stor[_890] * s * Mask(112, 0, _950) / (1000 * Mask(112, 0, _930)) + (stor[_890] * s)
                                                continue 
                                            _1053 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1053 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1053 + 36] = stor5[mem[0]] * s * Mask(112, 0, _950) / (1000 * Mask(112, 0, _930)) + (stor5[mem[0]] * s)
                                            mem[_1053 + 68] = 0
                                            mem[_1053 + 100] = address(_799)
                                            mem[_1053 + 132] = 128
                                            mem[_1053 + 164] = mem[_1053]
                                            t = 0
                                            while t < mem[_1053]:
                                                mem[t + _1053 + 196] = mem[t + _1053 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1053]) > mem[_1053]:
                                                mem[mem[_1053] + _1053 + 196] = 0
                                            require ext_code.size(address(_787))
                                            call address(_787).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args stor5[mem[0]] * s * Mask(112, 0, _950) / (1000 * Mask(112, 0, _930)) + (stor5[mem[0]] * s), 0, address(_799), 128, mem[_1053], mem[_1053 + 196 len ceil32(mem[_1053])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor5[mem[0]] * s * Mask(112, 0, _950) / (1000 * Mask(112, 0, _930)) + (stor5[mem[0]] * s)
                                            continue 
                                        require (1000 * mem[_922 + 50 len 14]) + (stor5[mem[0]] * s)
                                        if address(_768) == address(_768):
                                            _1054 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1054 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1054 + 36] = 0
                                            mem[_1054 + 68] = stor5[mem[0]] * s * Mask(112, 0, _930) / (1000 * Mask(112, 0, _950)) + (stor5[mem[0]] * s)
                                            mem[_1054 + 100] = address(_799)
                                            mem[_1054 + 132] = 128
                                            mem[_1054 + 164] = mem[_1054]
                                            t = 0
                                            while t < mem[_1054]:
                                                mem[t + _1054 + 196] = mem[t + _1054 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1054]) > mem[_1054]:
                                                mem[mem[_1054] + _1054 + 196] = 0
                                            require ext_code.size(address(_787))
                                            call address(_787).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, mem[_1054 + 68], address(_799), 128, mem[_1054], mem[_1054 + 196 len ceil32(mem[_1054])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor[_890] * s * Mask(112, 0, _930) / (1000 * Mask(112, 0, _950)) + (stor[_890] * s)
                                            continue 
                                        _1055 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1055 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1055 + 36] = stor5[mem[0]] * s * Mask(112, 0, _930) / (1000 * Mask(112, 0, _950)) + (stor5[mem[0]] * s)
                                        mem[_1055 + 68] = 0
                                        mem[_1055 + 100] = address(_799)
                                        mem[_1055 + 132] = 128
                                        mem[_1055 + 164] = mem[_1055]
                                        t = 0
                                        while t < mem[_1055]:
                                            mem[t + _1055 + 196] = mem[t + _1055 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1055]) > mem[_1055]:
                                            mem[mem[_1055] + _1055 + 196] = 0
                                        require ext_code.size(address(_787))
                                        call address(_787).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args stor5[mem[0]] * s * Mask(112, 0, _930) / (1000 * Mask(112, 0, _950)) + (stor5[mem[0]] * s), 0, address(_799), 128, mem[_1055], mem[_1055 + 196 len ceil32(mem[_1055])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor5[mem[0]] * s * Mask(112, 0, _930) / (1000 * Mask(112, 0, _950)) + (stor5[mem[0]] * s)
                                        continue 
                                    _867 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_867] == mem[_867 + 12 len 20]
                                    mem[0] = mem[_867 + 12 len 20]
                                    mem[32] = 5
                                    _891 = sha3(mem[0], 5)
                                    if stor5[mem[0]] <= 0:
                                        revert with 0, '13'
                                    require ext_code.size(address(_787))
                                    staticcall address(_787).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _923 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _931 = mem[_923]
                                    require mem[_923] == mem[_923 + 18 len 14]
                                    _951 = mem[_923 + 32]
                                    require mem[_923 + 32] == mem[_923 + 50 len 14]
                                    require mem[_923 + 64] == mem[_923 + 92 len 4]
                                    if address(_768) == address(_778):
                                        require (1000 * mem[_923 + 18 len 14]) + (stor5[mem[0]] * s)
                                        if address(_768) == address(_778):
                                            _1056 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1056 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1056 + 36] = 0
                                            mem[_1056 + 68] = stor5[mem[0]] * s * Mask(112, 0, _951) / (1000 * Mask(112, 0, _931)) + (stor5[mem[0]] * s)
                                            mem[_1056 + 100] = address(_799)
                                            mem[_1056 + 132] = 128
                                            mem[_1056 + 164] = mem[_1056]
                                            t = 0
                                            while t < mem[_1056]:
                                                mem[t + _1056 + 196] = mem[t + _1056 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1056]) > mem[_1056]:
                                                mem[mem[_1056] + _1056 + 196] = 0
                                            require ext_code.size(address(_787))
                                            call address(_787).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, mem[_1056 + 68], address(_799), 128, mem[_1056], mem[_1056 + 196 len ceil32(mem[_1056])]
                                        else:
                                            _1057 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1057 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1057 + 36] = stor5[mem[0]] * s * Mask(112, 0, _951) / (1000 * Mask(112, 0, _931)) + (stor5[mem[0]] * s)
                                            mem[_1057 + 68] = 0
                                            mem[_1057 + 100] = address(_799)
                                            mem[_1057 + 132] = 128
                                            mem[_1057 + 164] = mem[_1057]
                                            t = 0
                                            while t < mem[_1057]:
                                                mem[t + _1057 + 196] = mem[t + _1057 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1057]) > mem[_1057]:
                                                mem[mem[_1057] + _1057 + 196] = 0
                                            require ext_code.size(address(_787))
                                            call address(_787).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args mem[_1057 + 36], 0, address(_799), 128, mem[_1057], mem[_1057 + 196 len ceil32(mem[_1057])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor[_891] * s * Mask(112, 0, _951) / (1000 * Mask(112, 0, _931)) + (stor[_891] * s)
                                        continue 
                                    require (1000 * mem[_923 + 50 len 14]) + (stor5[mem[0]] * s)
                                    if address(_768) == address(_778):
                                        _1058 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1058 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1058 + 36] = 0
                                        mem[_1058 + 68] = stor5[mem[0]] * s * Mask(112, 0, _931) / (1000 * Mask(112, 0, _951)) + (stor5[mem[0]] * s)
                                        mem[_1058 + 100] = address(_799)
                                        mem[_1058 + 132] = 128
                                        mem[_1058 + 164] = mem[_1058]
                                        t = 0
                                        while t < mem[_1058]:
                                            mem[t + _1058 + 196] = mem[t + _1058 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1058]) > mem[_1058]:
                                            mem[mem[_1058] + _1058 + 196] = 0
                                        require ext_code.size(address(_787))
                                        call address(_787).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, mem[_1058 + 68], address(_799), 128, mem[_1058], mem[_1058 + 196 len ceil32(mem[_1058])]
                                    else:
                                        _1059 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1059 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1059 + 36] = stor5[mem[0]] * s * Mask(112, 0, _931) / (1000 * Mask(112, 0, _951)) + (stor5[mem[0]] * s)
                                        mem[_1059 + 68] = 0
                                        mem[_1059 + 100] = address(_799)
                                        mem[_1059 + 132] = 128
                                        mem[_1059 + 164] = mem[_1059]
                                        t = 0
                                        while t < mem[_1059]:
                                            mem[t + _1059 + 196] = mem[t + _1059 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1059]) > mem[_1059]:
                                            mem[mem[_1059] + _1059 + 196] = 0
                                        require ext_code.size(address(_787))
                                        call address(_787).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[_1059 + 36], 0, address(_799), 128, mem[_1059], mem[_1059 + 196 len ceil32(mem[_1059])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = stor[_891] * s * Mask(112, 0, _931) / (1000 * Mask(112, 0, _951)) + (stor[_891] * s)
                                    continue 
                                if s < (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                                    revert with 0, '12'
                                _798 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_798] = 0
                                mem[_798 + 32] = 0
                                _805 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_805] = stor3
                                mem[_805 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_805]
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[mem[64]] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = mem[_805] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_805 + 32]
                            else:
                                mem[(7 * ceil32(return_data.size)) + 384] = 96
                                mem[(7 * ceil32(return_data.size)) + 480] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 256
                                u = (7 * ceil32(return_data.size)) + 512
                                while idx < 3:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 416] = 224
                                mem[(7 * ceil32(return_data.size)) + 608] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 128
                                u = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + 224]) + 544
                                while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 448] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]
                                _1349 = mem[64]
                                mem[mem[64]] = (7 * ceil32(return_data.size)) + -mem[64] + 704
                                mem[64] = (7 * ceil32(return_data.size)) + 736
                                mem[(7 * ceil32(return_data.size)) + 736] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 740] = this.address
                                mem[(7 * ceil32(return_data.size)) + 772] = (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1
                                mem[(7 * ceil32(return_data.size)) + 804] = 96
                                _1385 = mem[_1349]
                                mem[(7 * ceil32(return_data.size)) + 836] = mem[_1349]
                                mem[(7 * ceil32(return_data.size)) + 868 len ceil32(_1385)] = mem[_1349 + 32 len ceil32(_1385)]
                                if ceil32(_1385) > _1385:
                                    mem[_1385 + (7 * ceil32(return_data.size)) + 868] = 0
                                require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                                call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1, 96, mem[(7 * ceil32(return_data.size)) + 836 len ceil32(_1385) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = stor3
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[(7 * ceil32(return_data.size)) + 864] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = stor3 + (gas_remaining / 20 * 3600) + 1
    else:
        if address(arg1) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))
            if 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) <= stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])):
                require ext_code.size(address(arg2))
                staticcall address(arg2).factory() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[0] = ext_call.return_data[12 len 20]
                mem[32] = 5
                if stor5[ext_call.return_data[12 len 20]] <= 0:
                    revert with 0, '13'
                s = (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]]) + 1 / 2
                t = 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]]
                while s < t:
                    require s
                    s = (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) * stor5[ext_call.return_data[12 len 20]] / s) + s / 2
                    t = s
                    continue 
                if t > 1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])):
                    require stor5[ext_call.return_data[12 len 20]]
                    require (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) + (stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]])
                    if stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0])) / (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) + (stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) >= (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                        if t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]:
                            mem[(6 * ceil32(return_data.size)) + 96] = 3
                            mem[(6 * ceil32(return_data.size)) + 128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[(6 * ceil32(return_data.size)) + 160] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[(6 * ceil32(return_data.size)) + 224] = 3
                            mem[(6 * ceil32(return_data.size)) + 256] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 288] = address(arg3)
                            mem[(6 * ceil32(return_data.size)) + 320] = this.address
                            mem[(6 * ceil32(return_data.size)) + 356] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 352
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]] <= ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + 356] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 388] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]
                                mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (9 * ceil32(return_data.size)) + 352
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[mem[0]]
                                while idx < 2:
                                    require idx < mem[(6 * ceil32(return_data.size)) + 96]
                                    _771 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 96]
                                    _780 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 128]
                                    require idx < mem[(6 * ceil32(return_data.size)) + 224]
                                    _790 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 256]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 224]
                                    _801 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 256]
                                    require ext_code.size(mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20])
                                    staticcall mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20].factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 140 len 20] < mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 140 len 20]:
                                        _868 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_868] == mem[_868 + 12 len 20]
                                        mem[0] = mem[_868 + 12 len 20]
                                        mem[32] = 5
                                        _892 = sha3(mem[0], 5)
                                        if stor5[mem[0]] <= 0:
                                            revert with 0, '13'
                                        require ext_code.size(address(_790))
                                        staticcall address(_790).getReserves() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _924 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _932 = mem[_924]
                                        require mem[_924] == mem[_924 + 18 len 14]
                                        _952 = mem[_924 + 32]
                                        require mem[_924 + 32] == mem[_924 + 50 len 14]
                                        require mem[_924 + 64] == mem[_924 + 92 len 4]
                                        if address(_771) == address(_771):
                                            require (1000 * mem[_924 + 18 len 14]) + (stor5[mem[0]] * s)
                                            if address(_771) == address(_771):
                                                _1064 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_1064 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_1064 + 36] = 0
                                                mem[_1064 + 68] = stor5[mem[0]] * s * Mask(112, 0, _952) / (1000 * Mask(112, 0, _932)) + (stor5[mem[0]] * s)
                                                mem[_1064 + 100] = address(_801)
                                                mem[_1064 + 132] = 128
                                                mem[_1064 + 164] = mem[_1064]
                                                t = 0
                                                while t < mem[_1064]:
                                                    mem[t + _1064 + 196] = mem[t + _1064 + 32]
                                                    t = t + 32
                                                    continue 
                                                if ceil32(mem[_1064]) > mem[_1064]:
                                                    mem[mem[_1064] + _1064 + 196] = 0
                                                require ext_code.size(address(_790))
                                                call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, mem[_1064 + 68], address(_801), 128, mem[_1064], mem[_1064 + 196 len ceil32(mem[_1064])]
                                            else:
                                                _1065 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_1065 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_1065 + 36] = stor5[mem[0]] * s * Mask(112, 0, _952) / (1000 * Mask(112, 0, _932)) + (stor5[mem[0]] * s)
                                                mem[_1065 + 68] = 0
                                                mem[_1065 + 100] = address(_801)
                                                mem[_1065 + 132] = 128
                                                mem[_1065 + 164] = mem[_1065]
                                                t = 0
                                                while t < mem[_1065]:
                                                    mem[t + _1065 + 196] = mem[t + _1065 + 32]
                                                    t = t + 32
                                                    continue 
                                                if ceil32(mem[_1065]) > mem[_1065]:
                                                    mem[mem[_1065] + _1065 + 196] = 0
                                                require ext_code.size(address(_790))
                                                call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_1065 + 36], 0, address(_801), 128, mem[_1065], mem[_1065 + 196 len ceil32(mem[_1065])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor[_892] * s * Mask(112, 0, _952) / (1000 * Mask(112, 0, _932)) + (stor[_892] * s)
                                            continue 
                                        require (1000 * mem[_924 + 50 len 14]) + (stor5[mem[0]] * s)
                                        if address(_771) == address(_771):
                                            _1066 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1066 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1066 + 36] = 0
                                            mem[_1066 + 68] = stor5[mem[0]] * s * Mask(112, 0, _932) / (1000 * Mask(112, 0, _952)) + (stor5[mem[0]] * s)
                                            mem[_1066 + 100] = address(_801)
                                            mem[_1066 + 132] = 128
                                            mem[_1066 + 164] = mem[_1066]
                                            t = 0
                                            while t < mem[_1066]:
                                                mem[t + _1066 + 196] = mem[t + _1066 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1066]) > mem[_1066]:
                                                mem[mem[_1066] + _1066 + 196] = 0
                                            require ext_code.size(address(_790))
                                            call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, mem[_1066 + 68], address(_801), 128, mem[_1066], mem[_1066 + 196 len ceil32(mem[_1066])]
                                        else:
                                            _1067 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1067 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1067 + 36] = stor5[mem[0]] * s * Mask(112, 0, _932) / (1000 * Mask(112, 0, _952)) + (stor5[mem[0]] * s)
                                            mem[_1067 + 68] = 0
                                            mem[_1067 + 100] = address(_801)
                                            mem[_1067 + 132] = 128
                                            mem[_1067 + 164] = mem[_1067]
                                            t = 0
                                            while t < mem[_1067]:
                                                mem[t + _1067 + 196] = mem[t + _1067 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1067]) > mem[_1067]:
                                                mem[mem[_1067] + _1067 + 196] = 0
                                            require ext_code.size(address(_790))
                                            call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args mem[_1067 + 36], 0, address(_801), 128, mem[_1067], mem[_1067 + 196 len ceil32(mem[_1067])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor[_892] * s * Mask(112, 0, _932) / (1000 * Mask(112, 0, _952)) + (stor[_892] * s)
                                        continue 
                                    _869 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_869] == mem[_869 + 12 len 20]
                                    mem[0] = mem[_869 + 12 len 20]
                                    mem[32] = 5
                                    _893 = sha3(mem[0], 5)
                                    if stor5[mem[0]] <= 0:
                                        revert with 0, '13'
                                    require ext_code.size(address(_790))
                                    staticcall address(_790).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _925 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _933 = mem[_925]
                                    require mem[_925] == mem[_925 + 18 len 14]
                                    _953 = mem[_925 + 32]
                                    require mem[_925 + 32] == mem[_925 + 50 len 14]
                                    require mem[_925 + 64] == mem[_925 + 92 len 4]
                                    if address(_771) == address(_780):
                                        require (1000 * mem[_925 + 18 len 14]) + (stor5[mem[0]] * s)
                                        if address(_771) == address(_780):
                                            _1068 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1068 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1068 + 36] = 0
                                            mem[_1068 + 68] = stor5[mem[0]] * s * Mask(112, 0, _953) / (1000 * Mask(112, 0, _933)) + (stor5[mem[0]] * s)
                                            mem[_1068 + 100] = address(_801)
                                            mem[_1068 + 132] = 128
                                            mem[_1068 + 164] = mem[_1068]
                                            t = 0
                                            while t < mem[_1068]:
                                                mem[t + _1068 + 196] = mem[t + _1068 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1068]) > mem[_1068]:
                                                mem[mem[_1068] + _1068 + 196] = 0
                                            require ext_code.size(address(_790))
                                            call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, mem[_1068 + 68], address(_801), 128, mem[_1068], mem[_1068 + 196 len ceil32(mem[_1068])]
                                        else:
                                            _1069 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1069 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1069 + 36] = stor5[mem[0]] * s * Mask(112, 0, _953) / (1000 * Mask(112, 0, _933)) + (stor5[mem[0]] * s)
                                            mem[_1069 + 68] = 0
                                            mem[_1069 + 100] = address(_801)
                                            mem[_1069 + 132] = 128
                                            mem[_1069 + 164] = mem[_1069]
                                            t = 0
                                            while t < mem[_1069]:
                                                mem[t + _1069 + 196] = mem[t + _1069 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1069]) > mem[_1069]:
                                                mem[mem[_1069] + _1069 + 196] = 0
                                            require ext_code.size(address(_790))
                                            call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args mem[_1069 + 36], 0, address(_801), 128, mem[_1069], mem[_1069 + 196 len ceil32(mem[_1069])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor[_893] * s * Mask(112, 0, _953) / (1000 * Mask(112, 0, _933)) + (stor[_893] * s)
                                        continue 
                                    require (1000 * mem[_925 + 50 len 14]) + (stor5[mem[0]] * s)
                                    if address(_771) == address(_780):
                                        _1070 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1070 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1070 + 36] = 0
                                        mem[_1070 + 68] = stor5[mem[0]] * s * Mask(112, 0, _933) / (1000 * Mask(112, 0, _953)) + (stor5[mem[0]] * s)
                                        mem[_1070 + 100] = address(_801)
                                        mem[_1070 + 132] = 128
                                        mem[_1070 + 164] = mem[_1070]
                                        t = 0
                                        while t < mem[_1070]:
                                            mem[t + _1070 + 196] = mem[t + _1070 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1070]) > mem[_1070]:
                                            mem[mem[_1070] + _1070 + 196] = 0
                                        require ext_code.size(address(_790))
                                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, mem[_1070 + 68], address(_801), 128, mem[_1070], mem[_1070 + 196 len ceil32(mem[_1070])]
                                    else:
                                        _1071 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1071 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1071 + 36] = stor5[mem[0]] * s * Mask(112, 0, _933) / (1000 * Mask(112, 0, _953)) + (stor5[mem[0]] * s)
                                        mem[_1071 + 68] = 0
                                        mem[_1071 + 100] = address(_801)
                                        mem[_1071 + 132] = 128
                                        mem[_1071 + 164] = mem[_1071]
                                        t = 0
                                        while t < mem[_1071]:
                                            mem[t + _1071 + 196] = mem[t + _1071 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1071]) > mem[_1071]:
                                            mem[mem[_1071] + _1071 + 196] = 0
                                        require ext_code.size(address(_790))
                                        call address(_790).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[_1071 + 36], 0, address(_801), 128, mem[_1071], mem[_1071 + 196 len ceil32(mem[_1071])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = stor[_893] * s * Mask(112, 0, _933) / (1000 * Mask(112, 0, _953)) + (stor[_893] * s)
                                    continue 
                                if s < (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                                    revert with 0, '12'
                                _800 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_800] = 0
                                mem[_800 + 32] = 0
                                _806 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_806] = stor3
                                mem[_806 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_806]
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[mem[64]] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = mem[_806] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_806 + 32]
                            else:
                                mem[(7 * ceil32(return_data.size)) + 384] = 96
                                mem[(7 * ceil32(return_data.size)) + 480] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 256
                                u = (7 * ceil32(return_data.size)) + 512
                                while idx < 3:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 416] = 224
                                mem[(7 * ceil32(return_data.size)) + 608] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 128
                                u = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + 224]) + 544
                                while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 448] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]
                                _1366 = mem[64]
                                mem[mem[64]] = (7 * ceil32(return_data.size)) + -mem[64] + 704
                                mem[64] = (7 * ceil32(return_data.size)) + 736
                                mem[(7 * ceil32(return_data.size)) + 736] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 740] = this.address
                                mem[(7 * ceil32(return_data.size)) + 772] = (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1
                                mem[(7 * ceil32(return_data.size)) + 804] = 96
                                _1386 = mem[_1366]
                                mem[(7 * ceil32(return_data.size)) + 836] = mem[_1366]
                                mem[(7 * ceil32(return_data.size)) + 868 len ceil32(_1386)] = mem[_1366 + 32 len ceil32(_1386)]
                                if ceil32(_1386) > _1386:
                                    mem[_1386 + (7 * ceil32(return_data.size)) + 868] = 0
                                require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                                call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1, 96, mem[(7 * ceil32(return_data.size)) + 836 len ceil32(_1386) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = stor3
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[(7 * ceil32(return_data.size)) + 864] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = stor3 + (gas_remaining / 20 * 3600) + 1
        else:
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))
            if 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) <= stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                require ext_code.size(address(arg2))
                staticcall address(arg2).factory() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[0] = ext_call.return_data[12 len 20]
                mem[32] = 5
                if stor5[ext_call.return_data[12 len 20]] <= 0:
                    revert with 0, '13'
                s = (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]]) + 1 / 2
                t = 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]]
                while s < t:
                    require s
                    s = (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) * stor5[ext_call.return_data[12 len 20]] / s) + s / 2
                    t = s
                    continue 
                if t > 1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])):
                    require stor5[ext_call.return_data[12 len 20]]
                    require (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) + (stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]])
                    if stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]] * stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32])) / (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) + (stor5[ext_call.return_data[12 len 20]] * t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) >= (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                        if t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]:
                            mem[(6 * ceil32(return_data.size)) + 96] = 3
                            mem[(6 * ceil32(return_data.size)) + 128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[(6 * ceil32(return_data.size)) + 160] = address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 192] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[(6 * ceil32(return_data.size)) + 224] = 3
                            mem[(6 * ceil32(return_data.size)) + 256] = address(arg2)
                            mem[(6 * ceil32(return_data.size)) + 288] = address(arg3)
                            mem[(6 * ceil32(return_data.size)) + 320] = this.address
                            mem[(6 * ceil32(return_data.size)) + 356] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 352
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]] <= ext_call.return_data[0]:
                                mem[(7 * ceil32(return_data.size)) + 356] = address(arg2)
                                mem[(7 * ceil32(return_data.size)) + 388] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]
                                mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (9 * ceil32(return_data.size)) + 352
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[mem[0]]
                                while idx < 2:
                                    require idx < mem[(6 * ceil32(return_data.size)) + 96]
                                    _774 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 96]
                                    _782 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 128]
                                    require idx < mem[(6 * ceil32(return_data.size)) + 224]
                                    _793 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 256]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 224]
                                    _803 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 256]
                                    require ext_code.size(mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20])
                                    staticcall mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20].factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 140 len 20] < mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 140 len 20]:
                                        _870 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_870] == mem[_870 + 12 len 20]
                                        mem[0] = mem[_870 + 12 len 20]
                                        mem[32] = 5
                                        _894 = sha3(mem[0], 5)
                                        if stor5[mem[0]] <= 0:
                                            revert with 0, '13'
                                        require ext_code.size(address(_793))
                                        staticcall address(_793).getReserves() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _926 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _934 = mem[_926]
                                        require mem[_926] == mem[_926 + 18 len 14]
                                        _954 = mem[_926 + 32]
                                        require mem[_926 + 32] == mem[_926 + 50 len 14]
                                        require mem[_926 + 64] == mem[_926 + 92 len 4]
                                        if address(_774) == address(_774):
                                            require (1000 * mem[_926 + 18 len 14]) + (stor5[mem[0]] * s)
                                            if address(_774) == address(_774):
                                                _1076 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_1076 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_1076 + 36] = 0
                                                mem[_1076 + 68] = stor5[mem[0]] * s * Mask(112, 0, _954) / (1000 * Mask(112, 0, _934)) + (stor5[mem[0]] * s)
                                                mem[_1076 + 100] = address(_803)
                                                mem[_1076 + 132] = 128
                                                mem[_1076 + 164] = mem[_1076]
                                                t = 0
                                                while t < mem[_1076]:
                                                    mem[t + _1076 + 196] = mem[t + _1076 + 32]
                                                    t = t + 32
                                                    continue 
                                                if ceil32(mem[_1076]) > mem[_1076]:
                                                    mem[mem[_1076] + _1076 + 196] = 0
                                                require ext_code.size(address(_793))
                                                call address(_793).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, stor5[mem[0]] * s * Mask(112, 0, _954) / (1000 * Mask(112, 0, _934)) + (stor5[mem[0]] * s), address(_803), 128, mem[_1076], mem[_1076 + 196 len ceil32(mem[_1076])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = stor5[mem[0]] * s * Mask(112, 0, _954) / (1000 * Mask(112, 0, _934)) + (stor5[mem[0]] * s)
                                                continue 
                                            _1077 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1077 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1077 + 36] = stor5[mem[0]] * s * Mask(112, 0, _954) / (1000 * Mask(112, 0, _934)) + (stor5[mem[0]] * s)
                                            mem[_1077 + 68] = 0
                                            mem[_1077 + 100] = address(_803)
                                            mem[_1077 + 132] = 128
                                            mem[_1077 + 164] = mem[_1077]
                                            t = 0
                                            while t < mem[_1077]:
                                                mem[t + _1077 + 196] = mem[t + _1077 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1077]) > mem[_1077]:
                                                mem[mem[_1077] + _1077 + 196] = 0
                                            require ext_code.size(address(_793))
                                            call address(_793).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args mem[_1077 + 36], 0, address(_803), 128, mem[_1077], mem[_1077 + 196 len ceil32(mem[_1077])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor[_894] * s * Mask(112, 0, _954) / (1000 * Mask(112, 0, _934)) + (stor[_894] * s)
                                            continue 
                                        require (1000 * mem[_926 + 50 len 14]) + (stor5[mem[0]] * s)
                                        if address(_774) == address(_774):
                                            _1078 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1078 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1078 + 36] = 0
                                            mem[_1078 + 68] = stor5[mem[0]] * s * Mask(112, 0, _934) / (1000 * Mask(112, 0, _954)) + (stor5[mem[0]] * s)
                                            mem[_1078 + 100] = address(_803)
                                            mem[_1078 + 132] = 128
                                            mem[_1078 + 164] = mem[_1078]
                                            t = 0
                                            while t < mem[_1078]:
                                                mem[t + _1078 + 196] = mem[t + _1078 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1078]) > mem[_1078]:
                                                mem[mem[_1078] + _1078 + 196] = 0
                                            require ext_code.size(address(_793))
                                            call address(_793).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, stor5[mem[0]] * s * Mask(112, 0, _934) / (1000 * Mask(112, 0, _954)) + (stor5[mem[0]] * s), address(_803), 128, mem[_1078], mem[_1078 + 196 len ceil32(mem[_1078])]
                                        else:
                                            _1079 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1079 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1079 + 36] = stor5[mem[0]] * s * Mask(112, 0, _934) / (1000 * Mask(112, 0, _954)) + (stor5[mem[0]] * s)
                                            mem[_1079 + 68] = 0
                                            mem[_1079 + 100] = address(_803)
                                            mem[_1079 + 132] = 128
                                            mem[_1079 + 164] = mem[_1079]
                                            t = 0
                                            while t < mem[_1079]:
                                                mem[t + _1079 + 196] = mem[t + _1079 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1079]) > mem[_1079]:
                                                mem[mem[_1079] + _1079 + 196] = 0
                                            require ext_code.size(address(_793))
                                            call address(_793).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args stor5[mem[0]] * s * Mask(112, 0, _934) / (1000 * Mask(112, 0, _954)) + (stor5[mem[0]] * s), 0, address(_803), 128, mem[_1079], mem[_1079 + 196 len ceil32(mem[_1079])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor5[mem[0]] * s * Mask(112, 0, _934) / (1000 * Mask(112, 0, _954)) + (stor5[mem[0]] * s)
                                        continue 
                                    _871 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_871] == mem[_871 + 12 len 20]
                                    mem[0] = mem[_871 + 12 len 20]
                                    mem[32] = 5
                                    _895 = sha3(mem[0], 5)
                                    if stor5[mem[0]] <= 0:
                                        revert with 0, '13'
                                    require ext_code.size(address(_793))
                                    staticcall address(_793).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _927 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _935 = mem[_927]
                                    require mem[_927] == mem[_927 + 18 len 14]
                                    _955 = mem[_927 + 32]
                                    require mem[_927 + 32] == mem[_927 + 50 len 14]
                                    require mem[_927 + 64] == mem[_927 + 92 len 4]
                                    if address(_774) == address(_782):
                                        require (1000 * mem[_927 + 18 len 14]) + (stor5[mem[0]] * s)
                                        if address(_774) == address(_782):
                                            _1080 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1080 + 36] = 0
                                            mem[_1080 + 68] = stor5[mem[0]] * s * Mask(112, 0, _955) / (1000 * Mask(112, 0, _935)) + (stor5[mem[0]] * s)
                                            mem[_1080 + 100] = address(_803)
                                            mem[_1080 + 132] = 128
                                            mem[_1080 + 164] = mem[_1080]
                                            t = 0
                                            while t < mem[_1080]:
                                                mem[t + _1080 + 196] = mem[t + _1080 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1080]) > mem[_1080]:
                                                mem[mem[_1080] + _1080 + 196] = 0
                                            require ext_code.size(address(_793))
                                            call address(_793).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, stor5[mem[0]] * s * Mask(112, 0, _955) / (1000 * Mask(112, 0, _935)) + (stor5[mem[0]] * s), address(_803), 128, mem[_1080], mem[_1080 + 196 len ceil32(mem[_1080])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor5[mem[0]] * s * Mask(112, 0, _955) / (1000 * Mask(112, 0, _935)) + (stor5[mem[0]] * s)
                                            continue 
                                        _1081 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1081 + 36] = stor5[mem[0]] * s * Mask(112, 0, _955) / (1000 * Mask(112, 0, _935)) + (stor5[mem[0]] * s)
                                        mem[_1081 + 68] = 0
                                        mem[_1081 + 100] = address(_803)
                                        mem[_1081 + 132] = 128
                                        mem[_1081 + 164] = mem[_1081]
                                        t = 0
                                        while t < mem[_1081]:
                                            mem[t + _1081 + 196] = mem[t + _1081 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1081]) > mem[_1081]:
                                            mem[mem[_1081] + _1081 + 196] = 0
                                        require ext_code.size(address(_793))
                                        call address(_793).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[_1081 + 36], 0, address(_803), 128, mem[_1081], mem[_1081 + 196 len ceil32(mem[_1081])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor[_895] * s * Mask(112, 0, _955) / (1000 * Mask(112, 0, _935)) + (stor[_895] * s)
                                        continue 
                                    require (1000 * mem[_927 + 50 len 14]) + (stor5[mem[0]] * s)
                                    if address(_774) == address(_782):
                                        _1082 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1082 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1082 + 36] = 0
                                        mem[_1082 + 68] = stor5[mem[0]] * s * Mask(112, 0, _935) / (1000 * Mask(112, 0, _955)) + (stor5[mem[0]] * s)
                                        mem[_1082 + 100] = address(_803)
                                        mem[_1082 + 132] = 128
                                        mem[_1082 + 164] = mem[_1082]
                                        t = 0
                                        while t < mem[_1082]:
                                            mem[t + _1082 + 196] = mem[t + _1082 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1082]) > mem[_1082]:
                                            mem[mem[_1082] + _1082 + 196] = 0
                                        require ext_code.size(address(_793))
                                        call address(_793).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, mem[_1082 + 68], address(_803), 128, mem[_1082], mem[_1082 + 196 len ceil32(mem[_1082])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor[_895] * s * Mask(112, 0, _935) / (1000 * Mask(112, 0, _955)) + (stor[_895] * s)
                                        continue 
                                    _1083 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1083 + 36] = stor5[mem[0]] * s * Mask(112, 0, _935) / (1000 * Mask(112, 0, _955)) + (stor5[mem[0]] * s)
                                    mem[_1083 + 68] = 0
                                    mem[_1083 + 100] = address(_803)
                                    mem[_1083 + 132] = 128
                                    mem[_1083 + 164] = mem[_1083]
                                    t = 0
                                    while t < mem[_1083]:
                                        mem[t + _1083 + 196] = mem[t + _1083 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1083]) > mem[_1083]:
                                        mem[mem[_1083] + _1083 + 196] = 0
                                    require ext_code.size(address(_793))
                                    call address(_793).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args stor5[mem[0]] * s * Mask(112, 0, _935) / (1000 * Mask(112, 0, _955)) + (stor5[mem[0]] * s), 0, address(_803), 128, mem[_1083], mem[_1083 + 196 len ceil32(mem[_1083])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = stor5[mem[0]] * s * Mask(112, 0, _935) / (1000 * Mask(112, 0, _955)) + (stor5[mem[0]] * s)
                                    continue 
                                if s < (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                                    revert with 0, '12'
                                _802 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_802] = 0
                                mem[_802 + 32] = 0
                                _807 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_807] = stor3
                                mem[_807 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_807]
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[mem[64]] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = mem[_807] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_807 + 32]
                            else:
                                mem[(7 * ceil32(return_data.size)) + 384] = 96
                                mem[(7 * ceil32(return_data.size)) + 480] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 256
                                u = (7 * ceil32(return_data.size)) + 512
                                while idx < 3:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 416] = 224
                                mem[(7 * ceil32(return_data.size)) + 608] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 128
                                u = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + 224]) + 544
                                while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 448] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]
                                _1383 = mem[64]
                                mem[mem[64]] = (7 * ceil32(return_data.size)) + -mem[64] + 704
                                mem[64] = (7 * ceil32(return_data.size)) + 736
                                mem[(7 * ceil32(return_data.size)) + 736] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 740] = this.address
                                mem[(7 * ceil32(return_data.size)) + 772] = (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1
                                mem[(7 * ceil32(return_data.size)) + 804] = 96
                                _1387 = mem[_1383]
                                mem[(7 * ceil32(return_data.size)) + 836] = mem[_1383]
                                mem[(7 * ceil32(return_data.size)) + 868 len ceil32(_1387)] = mem[_1383 + 32 len ceil32(_1387)]
                                if ceil32(_1387) > _1387:
                                    mem[_1387 + (7 * ceil32(return_data.size)) + 868] = 0
                                require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                                call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1, 96, mem[(7 * ceil32(return_data.size)) + 836 len ceil32(_1387) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = stor3
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[(7 * ceil32(return_data.size)) + 864] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = stor3 + (gas_remaining / 20 * 3600) + 1
}



}
