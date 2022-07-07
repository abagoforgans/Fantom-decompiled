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

function sub_044ec7ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[address(arg1)])
}

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

function sub_ea85c736(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < arg1:
        mem[96 len 223] = code.data[12714 len 223]
        create contract with 0 wei
                        code: code.data[12714 len 223]
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

function sub_8dbe9b22(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor6[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        idx = idx + 1
        continue 
}

function sub_a2763cac(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor6[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
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
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 36)]) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 68)] + 36)]) + (32 * cd[(cd[4] + ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 100)] + 36)]) + 512 len 223] = code.data[12714 len 223]
                create contract with 0 wei
                                code: code.data[12714 len 223]
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
    _182 = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
    require 0 < cd[(arg5 + cd[(arg5 + 36)] + 36)]
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 164] = mem[ceil32(return_data.size) + 140 len 20]
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 196] = cd[(arg5 + 100)]
    require ext_code.size(address(_182))
    call address(_182).0xa9059cbb with:
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
        _283 = mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
        require idx + 1 < mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
        _286 = mem[(32 * idx + 1) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
        require idx < mem[ceil32(return_data.size) + 96]
        _288 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require idx + 1 < mem[ceil32(return_data.size) + 96]
        _290 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]:
            _296 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_296] == mem[_296 + 12 len 20]
            mem[0] = mem[_296 + 12 len 20]
            mem[32] = 5
            _303 = sha3(mem[0], 5)
            if stor5[mem[0]] <= 0:
                revert with 0, '13'
            require ext_code.size(address(_288))
            staticcall address(_288).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _314 = mem[_312]
            require mem[_312] == mem[_312 + 18 len 14]
            _319 = mem[_312 + 32]
            require mem[_312 + 32] == mem[_312 + 50 len 14]
            require mem[_312 + 64] == mem[_312 + 92 len 4]
            if address(_283) == address(_283):
                require (1000 * mem[_312 + 18 len 14]) + (stor5[mem[0]] * s)
                if address(_283) == address(_283):
                    _323 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_323 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_323 + 36] = 0
                    mem[_323 + 68] = stor5[mem[0]] * s * Mask(112, 0, _319) / (1000 * Mask(112, 0, _314)) + (stor5[mem[0]] * s)
                    mem[_323 + 100] = address(_290)
                    mem[_323 + 132] = 128
                    mem[_323 + 164] = mem[_323]
                    t = 0
                    while t < mem[_323]:
                        mem[t + _323 + 196] = mem[t + _323 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_323]) > mem[_323]:
                        mem[mem[_323] + _323 + 196] = 0
                    require ext_code.size(address(_288))
                    call address(_288).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[_323 + 68], address(_290), 128, mem[_323], mem[_323 + 196 len ceil32(mem[_323])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = stor[_303] * s * Mask(112, 0, _319) / (1000 * Mask(112, 0, _314)) + (stor[_303] * s)
                    continue 
                _324 = mem[64]
                mem[64] = mem[64] + 32
                mem[_324 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_324 + 36] = stor5[mem[0]] * s * Mask(112, 0, _319) / (1000 * Mask(112, 0, _314)) + (stor5[mem[0]] * s)
                mem[_324 + 68] = 0
                mem[_324 + 100] = address(_290)
                mem[_324 + 132] = 128
                mem[_324 + 164] = mem[_324]
                t = 0
                while t < mem[_324]:
                    mem[t + _324 + 196] = mem[t + _324 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_324]) > mem[_324]:
                    mem[mem[_324] + _324 + 196] = 0
                require ext_code.size(address(_288))
                call address(_288).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args stor5[mem[0]] * s * Mask(112, 0, _319) / (1000 * Mask(112, 0, _314)) + (stor5[mem[0]] * s), 0, address(_290), 128, mem[_324], mem[_324 + 196 len ceil32(mem[_324])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = stor5[mem[0]] * s * Mask(112, 0, _319) / (1000 * Mask(112, 0, _314)) + (stor5[mem[0]] * s)
                continue 
            require (1000 * mem[_312 + 50 len 14]) + (stor5[mem[0]] * s)
            if address(_283) == address(_283):
                _325 = mem[64]
                mem[64] = mem[64] + 32
                mem[_325 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_325 + 36] = 0
                mem[_325 + 68] = stor5[mem[0]] * s * Mask(112, 0, _314) / (1000 * Mask(112, 0, _319)) + (stor5[mem[0]] * s)
                mem[_325 + 100] = address(_290)
                mem[_325 + 132] = 128
                mem[_325 + 164] = mem[_325]
                t = 0
                while t < mem[_325]:
                    mem[t + _325 + 196] = mem[t + _325 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_325]) > mem[_325]:
                    mem[mem[_325] + _325 + 196] = 0
                require ext_code.size(address(_288))
                call address(_288).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, stor5[mem[0]] * s * Mask(112, 0, _314) / (1000 * Mask(112, 0, _319)) + (stor5[mem[0]] * s), address(_290), 128, mem[_325], mem[_325 + 196 len ceil32(mem[_325])]
            else:
                _326 = mem[64]
                mem[64] = mem[64] + 32
                mem[_326 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_326 + 36] = stor5[mem[0]] * s * Mask(112, 0, _314) / (1000 * Mask(112, 0, _319)) + (stor5[mem[0]] * s)
                mem[_326 + 68] = 0
                mem[_326 + 100] = address(_290)
                mem[_326 + 132] = 128
                mem[_326 + 164] = mem[_326]
                t = 0
                while t < mem[_326]:
                    mem[t + _326 + 196] = mem[t + _326 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_326]) > mem[_326]:
                    mem[mem[_326] + _326 + 196] = 0
                require ext_code.size(address(_288))
                call address(_288).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args stor5[mem[0]] * s * Mask(112, 0, _314) / (1000 * Mask(112, 0, _319)) + (stor5[mem[0]] * s), 0, address(_290), 128, mem[_326], mem[_326 + 196 len ceil32(mem[_326])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor5[mem[0]] * s * Mask(112, 0, _314) / (1000 * Mask(112, 0, _319)) + (stor5[mem[0]] * s)
            continue 
        _297 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_297] == mem[_297 + 12 len 20]
        mem[0] = mem[_297 + 12 len 20]
        mem[32] = 5
        _304 = sha3(mem[0], 5)
        if stor5[mem[0]] <= 0:
            revert with 0, '13'
        require ext_code.size(address(_288))
        staticcall address(_288).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _313 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _316 = mem[_313]
        require mem[_313] == mem[_313 + 18 len 14]
        _320 = mem[_313 + 32]
        require mem[_313 + 32] == mem[_313 + 50 len 14]
        require mem[_313 + 64] == mem[_313 + 92 len 4]
        if address(_283) == address(_286):
            require (1000 * mem[_313 + 18 len 14]) + (stor5[mem[0]] * s)
            if address(_283) == address(_286):
                _327 = mem[64]
                mem[64] = mem[64] + 32
                mem[_327 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_327 + 36] = 0
                mem[_327 + 68] = stor5[mem[0]] * s * Mask(112, 0, _320) / (1000 * Mask(112, 0, _316)) + (stor5[mem[0]] * s)
                mem[_327 + 100] = address(_290)
                mem[_327 + 132] = 128
                mem[_327 + 164] = mem[_327]
                t = 0
                while t < mem[_327]:
                    mem[t + _327 + 196] = mem[t + _327 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_327]) > mem[_327]:
                    mem[mem[_327] + _327 + 196] = 0
                require ext_code.size(address(_288))
                call address(_288).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, mem[_327 + 68], address(_290), 128, mem[_327], mem[_327 + 196 len ceil32(mem[_327])]
            else:
                _328 = mem[64]
                mem[64] = mem[64] + 32
                mem[_328 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_328 + 36] = stor5[mem[0]] * s * Mask(112, 0, _320) / (1000 * Mask(112, 0, _316)) + (stor5[mem[0]] * s)
                mem[_328 + 68] = 0
                mem[_328 + 100] = address(_290)
                mem[_328 + 132] = 128
                mem[_328 + 164] = mem[_328]
                t = 0
                while t < mem[_328]:
                    mem[t + _328 + 196] = mem[t + _328 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_328]) > mem[_328]:
                    mem[mem[_328] + _328 + 196] = 0
                require ext_code.size(address(_288))
                call address(_288).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[_328 + 36], 0, address(_290), 128, mem[_328], mem[_328 + 196 len ceil32(mem[_328])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = stor[_304] * s * Mask(112, 0, _320) / (1000 * Mask(112, 0, _316)) + (stor[_304] * s)
            continue 
        require (1000 * mem[_313 + 50 len 14]) + (stor5[mem[0]] * s)
        if address(_283) == address(_286):
            _329 = mem[64]
            mem[64] = mem[64] + 32
            mem[_329 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_329 + 36] = 0
            mem[_329 + 68] = stor5[mem[0]] * s * Mask(112, 0, _316) / (1000 * Mask(112, 0, _320)) + (stor5[mem[0]] * s)
            mem[_329 + 100] = address(_290)
            mem[_329 + 132] = 128
            mem[_329 + 164] = mem[_329]
            t = 0
            while t < mem[_329]:
                mem[t + _329 + 196] = mem[t + _329 + 32]
                t = t + 32
                continue 
            if ceil32(mem[_329]) > mem[_329]:
                mem[mem[_329] + _329 + 196] = 0
            require ext_code.size(address(_288))
            call address(_288).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[_329 + 68], address(_290), 128, mem[_329], mem[_329 + 196 len ceil32(mem[_329])]
        else:
            _330 = mem[64]
            mem[64] = mem[64] + 32
            mem[_330 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_330 + 36] = stor5[mem[0]] * s * Mask(112, 0, _316) / (1000 * Mask(112, 0, _320)) + (stor5[mem[0]] * s)
            mem[_330 + 68] = 0
            mem[_330 + 100] = address(_290)
            mem[_330 + 132] = 128
            mem[_330 + 164] = mem[_330]
            t = 0
            while t < mem[_330]:
                mem[t + _330 + 196] = mem[t + _330 + 32]
                t = t + 32
                continue 
            if ceil32(mem[_330]) > mem[_330]:
                mem[mem[_330] + _330 + 196] = 0
            require ext_code.size(address(_288))
            call address(_288).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[_330 + 36], 0, address(_290), 128, mem[_330], mem[_330 + 196 len ceil32(mem[_330])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = stor[_304] * s * Mask(112, 0, _316) / (1000 * Mask(112, 0, _320)) + (stor[_304] * s)
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
    _299 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_299] == bool(mem[_299])
    if not mem[_299]:
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
                                    _777 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 96]
                                    _788 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 128]
                                    require idx < mem[(6 * ceil32(return_data.size)) + 224]
                                    _796 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 256]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 224]
                                    _809 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 256]
                                    require ext_code.size(mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20])
                                    staticcall mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20].factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 140 len 20] < mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 140 len 20]:
                                        _876 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_876] == mem[_876 + 12 len 20]
                                        mem[0] = mem[_876 + 12 len 20]
                                        mem[32] = 5
                                        _900 = sha3(mem[0], 5)
                                        if stor5[mem[0]] <= 0:
                                            revert with 0, '13'
                                        require ext_code.size(address(_796))
                                        staticcall address(_796).getReserves() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _932 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _940 = mem[_932]
                                        require mem[_932] == mem[_932 + 18 len 14]
                                        _964 = mem[_932 + 32]
                                        require mem[_932 + 32] == mem[_932 + 50 len 14]
                                        require mem[_932 + 64] == mem[_932 + 92 len 4]
                                        if address(_777) == address(_777):
                                            require (1000 * mem[_932 + 18 len 14]) + (stor5[mem[0]] * s)
                                            if address(_777) == address(_777):
                                                _1068 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_1068 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_1068 + 36] = 0
                                                mem[_1068 + 68] = stor5[mem[0]] * s * Mask(112, 0, _964) / (1000 * Mask(112, 0, _940)) + (stor5[mem[0]] * s)
                                                mem[_1068 + 100] = address(_809)
                                                mem[_1068 + 132] = 128
                                                mem[_1068 + 164] = mem[_1068]
                                                t = 0
                                                while t < mem[_1068]:
                                                    mem[t + _1068 + 196] = mem[t + _1068 + 32]
                                                    t = t + 32
                                                    continue 
                                                if ceil32(mem[_1068]) > mem[_1068]:
                                                    mem[mem[_1068] + _1068 + 196] = 0
                                                require ext_code.size(address(_796))
                                                call address(_796).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, mem[_1068 + 68], address(_809), 128, mem[_1068], mem[_1068 + 196 len ceil32(mem[_1068])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = stor[_900] * s * Mask(112, 0, _964) / (1000 * Mask(112, 0, _940)) + (stor[_900] * s)
                                                continue 
                                            _1069 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1069 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1069 + 36] = stor5[mem[0]] * s * Mask(112, 0, _964) / (1000 * Mask(112, 0, _940)) + (stor5[mem[0]] * s)
                                            mem[_1069 + 68] = 0
                                            mem[_1069 + 100] = address(_809)
                                            mem[_1069 + 132] = 128
                                            mem[_1069 + 164] = mem[_1069]
                                            t = 0
                                            while t < mem[_1069]:
                                                mem[t + _1069 + 196] = mem[t + _1069 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1069]) > mem[_1069]:
                                                mem[mem[_1069] + _1069 + 196] = 0
                                            require ext_code.size(address(_796))
                                            call address(_796).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args stor5[mem[0]] * s * Mask(112, 0, _964) / (1000 * Mask(112, 0, _940)) + (stor5[mem[0]] * s), 0, address(_809), 128, mem[_1069], mem[_1069 + 196 len ceil32(mem[_1069])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor5[mem[0]] * s * Mask(112, 0, _964) / (1000 * Mask(112, 0, _940)) + (stor5[mem[0]] * s)
                                            continue 
                                        require (1000 * mem[_932 + 50 len 14]) + (stor5[mem[0]] * s)
                                        if address(_777) == address(_777):
                                            _1070 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1070 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1070 + 36] = 0
                                            mem[_1070 + 68] = stor5[mem[0]] * s * Mask(112, 0, _940) / (1000 * Mask(112, 0, _964)) + (stor5[mem[0]] * s)
                                            mem[_1070 + 100] = address(_809)
                                            mem[_1070 + 132] = 128
                                            mem[_1070 + 164] = mem[_1070]
                                            t = 0
                                            while t < mem[_1070]:
                                                mem[t + _1070 + 196] = mem[t + _1070 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1070]) > mem[_1070]:
                                                mem[mem[_1070] + _1070 + 196] = 0
                                            require ext_code.size(address(_796))
                                            call address(_796).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, stor5[mem[0]] * s * Mask(112, 0, _940) / (1000 * Mask(112, 0, _964)) + (stor5[mem[0]] * s), address(_809), 128, mem[_1070], mem[_1070 + 196 len ceil32(mem[_1070])]
                                        else:
                                            _1071 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1071 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1071 + 36] = stor5[mem[0]] * s * Mask(112, 0, _940) / (1000 * Mask(112, 0, _964)) + (stor5[mem[0]] * s)
                                            mem[_1071 + 68] = 0
                                            mem[_1071 + 100] = address(_809)
                                            mem[_1071 + 132] = 128
                                            mem[_1071 + 164] = mem[_1071]
                                            t = 0
                                            while t < mem[_1071]:
                                                mem[t + _1071 + 196] = mem[t + _1071 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1071]) > mem[_1071]:
                                                mem[mem[_1071] + _1071 + 196] = 0
                                            require ext_code.size(address(_796))
                                            call address(_796).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args stor5[mem[0]] * s * Mask(112, 0, _940) / (1000 * Mask(112, 0, _964)) + (stor5[mem[0]] * s), 0, address(_809), 128, mem[_1071], mem[_1071 + 196 len ceil32(mem[_1071])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor5[mem[0]] * s * Mask(112, 0, _940) / (1000 * Mask(112, 0, _964)) + (stor5[mem[0]] * s)
                                        continue 
                                    _877 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_877] == mem[_877 + 12 len 20]
                                    mem[0] = mem[_877 + 12 len 20]
                                    mem[32] = 5
                                    _901 = sha3(mem[0], 5)
                                    if stor5[mem[0]] <= 0:
                                        revert with 0, '13'
                                    require ext_code.size(address(_796))
                                    staticcall address(_796).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _933 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _942 = mem[_933]
                                    require mem[_933] == mem[_933 + 18 len 14]
                                    _965 = mem[_933 + 32]
                                    require mem[_933 + 32] == mem[_933 + 50 len 14]
                                    require mem[_933 + 64] == mem[_933 + 92 len 4]
                                    if address(_777) == address(_788):
                                        require (1000 * mem[_933 + 18 len 14]) + (stor5[mem[0]] * s)
                                        if address(_777) == address(_788):
                                            _1072 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1072 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1072 + 36] = 0
                                            mem[_1072 + 68] = stor5[mem[0]] * s * Mask(112, 0, _965) / (1000 * Mask(112, 0, _942)) + (stor5[mem[0]] * s)
                                            mem[_1072 + 100] = address(_809)
                                            mem[_1072 + 132] = 128
                                            mem[_1072 + 164] = mem[_1072]
                                            t = 0
                                            while t < mem[_1072]:
                                                mem[t + _1072 + 196] = mem[t + _1072 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1072]) > mem[_1072]:
                                                mem[mem[_1072] + _1072 + 196] = 0
                                            require ext_code.size(address(_796))
                                            call address(_796).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, mem[_1072 + 68], address(_809), 128, mem[_1072], mem[_1072 + 196 len ceil32(mem[_1072])]
                                        else:
                                            _1073 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1073 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1073 + 36] = stor5[mem[0]] * s * Mask(112, 0, _965) / (1000 * Mask(112, 0, _942)) + (stor5[mem[0]] * s)
                                            mem[_1073 + 68] = 0
                                            mem[_1073 + 100] = address(_809)
                                            mem[_1073 + 132] = 128
                                            mem[_1073 + 164] = mem[_1073]
                                            t = 0
                                            while t < mem[_1073]:
                                                mem[t + _1073 + 196] = mem[t + _1073 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1073]) > mem[_1073]:
                                                mem[mem[_1073] + _1073 + 196] = 0
                                            require ext_code.size(address(_796))
                                            call address(_796).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args mem[_1073 + 36], 0, address(_809), 128, mem[_1073], mem[_1073 + 196 len ceil32(mem[_1073])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor[_901] * s * Mask(112, 0, _965) / (1000 * Mask(112, 0, _942)) + (stor[_901] * s)
                                        continue 
                                    require (1000 * mem[_933 + 50 len 14]) + (stor5[mem[0]] * s)
                                    if address(_777) == address(_788):
                                        _1074 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1074 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1074 + 36] = 0
                                        mem[_1074 + 68] = stor5[mem[0]] * s * Mask(112, 0, _942) / (1000 * Mask(112, 0, _965)) + (stor5[mem[0]] * s)
                                        mem[_1074 + 100] = address(_809)
                                        mem[_1074 + 132] = 128
                                        mem[_1074 + 164] = mem[_1074]
                                        t = 0
                                        while t < mem[_1074]:
                                            mem[t + _1074 + 196] = mem[t + _1074 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1074]) > mem[_1074]:
                                            mem[mem[_1074] + _1074 + 196] = 0
                                        require ext_code.size(address(_796))
                                        call address(_796).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, stor5[mem[0]] * s * Mask(112, 0, _942) / (1000 * Mask(112, 0, _965)) + (stor5[mem[0]] * s), address(_809), 128, mem[_1074], mem[_1074 + 196 len ceil32(mem[_1074])]
                                    else:
                                        _1075 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1075 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1075 + 36] = stor5[mem[0]] * s * Mask(112, 0, _942) / (1000 * Mask(112, 0, _965)) + (stor5[mem[0]] * s)
                                        mem[_1075 + 68] = 0
                                        mem[_1075 + 100] = address(_809)
                                        mem[_1075 + 132] = 128
                                        mem[_1075 + 164] = mem[_1075]
                                        t = 0
                                        while t < mem[_1075]:
                                            mem[t + _1075 + 196] = mem[t + _1075 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1075]) > mem[_1075]:
                                            mem[mem[_1075] + _1075 + 196] = 0
                                        require ext_code.size(address(_796))
                                        call address(_796).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args stor5[mem[0]] * s * Mask(112, 0, _942) / (1000 * Mask(112, 0, _965)) + (stor5[mem[0]] * s), 0, address(_809), 128, mem[_1075], mem[_1075 + 196 len ceil32(mem[_1075])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = stor5[mem[0]] * s * Mask(112, 0, _942) / (1000 * Mask(112, 0, _965)) + (stor5[mem[0]] * s)
                                    continue 
                                if s < (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                                    revert with 0, '12'
                                _808 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_808] = 0
                                mem[_808 + 32] = 0
                                _816 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_816] = stor3
                                mem[_816 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_816]
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
                                    stor3 = mem[_816] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_816 + 32]
                            else:
                                mem[(7 * ceil32(return_data.size)) + 384] = 96
                                mem[(7 * ceil32(return_data.size)) + 480] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 256
                                u = (7 * ceil32(return_data.size)) + 512
                                while idx < mem[(6 * ceil32(return_data.size)) + 224]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 416] = 224
                                _798 = mem[(6 * ceil32(return_data.size)) + 96]
                                mem[(7 * ceil32(return_data.size)) + 608] = mem[(6 * ceil32(return_data.size)) + 96]
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 128
                                u = (7 * ceil32(return_data.size)) + 640
                                while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 448] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]
                                _1344 = mem[64]
                                mem[mem[64]] = (7 * ceil32(return_data.size)) + (32 * _798) + -mem[64] + 608
                                mem[64] = (7 * ceil32(return_data.size)) + (32 * _798) + 640
                                mem[(7 * ceil32(return_data.size)) + (32 * _798) + 640] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + (32 * _798) + 644] = this.address
                                mem[(7 * ceil32(return_data.size)) + (32 * _798) + 676] = (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1
                                mem[(7 * ceil32(return_data.size)) + (32 * _798) + 708] = 96
                                _1396 = mem[_1344]
                                mem[(7 * ceil32(return_data.size)) + (32 * _798) + 740] = mem[_1344]
                                mem[(7 * ceil32(return_data.size)) + (32 * _798) + 772 len ceil32(_1396)] = mem[_1344 + 32 len ceil32(_1396)]
                                if ceil32(_1396) > _1396:
                                    mem[_1396 + (7 * ceil32(return_data.size)) + (32 * _798) + 772] = 0
                                require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                                call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1, 96, mem[(7 * ceil32(return_data.size)) + (32 * _798) + 740 len ceil32(_1396) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = stor3
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[(7 * ceil32(return_data.size)) + (32 * _798) + 768] = 0xda91a10100000000000000000000000000000000000000000000000000000000
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
                                    _780 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 96]
                                    _790 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 128]
                                    require idx < mem[(6 * ceil32(return_data.size)) + 224]
                                    _799 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 256]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 224]
                                    _811 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 256]
                                    require ext_code.size(mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20])
                                    staticcall mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20].factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 140 len 20] < mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 140 len 20]:
                                        _878 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_878] == mem[_878 + 12 len 20]
                                        mem[0] = mem[_878 + 12 len 20]
                                        mem[32] = 5
                                        _902 = sha3(mem[0], 5)
                                        if stor5[mem[0]] <= 0:
                                            revert with 0, '13'
                                        require ext_code.size(address(_799))
                                        staticcall address(_799).getReserves() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _934 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _945 = mem[_934]
                                        require mem[_934] == mem[_934 + 18 len 14]
                                        _966 = mem[_934 + 32]
                                        require mem[_934 + 32] == mem[_934 + 50 len 14]
                                        require mem[_934 + 64] == mem[_934 + 92 len 4]
                                        if address(_780) == address(_780):
                                            require (1000 * mem[_934 + 18 len 14]) + (stor5[mem[0]] * s)
                                            if address(_780) == address(_780):
                                                _1078 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_1078 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_1078 + 36] = 0
                                                mem[_1078 + 68] = stor5[mem[0]] * s * Mask(112, 0, _966) / (1000 * Mask(112, 0, _945)) + (stor5[mem[0]] * s)
                                                mem[_1078 + 100] = address(_811)
                                                mem[_1078 + 132] = 128
                                                mem[_1078 + 164] = mem[_1078]
                                                t = 0
                                                while t < mem[_1078]:
                                                    mem[t + _1078 + 196] = mem[t + _1078 + 32]
                                                    t = t + 32
                                                    continue 
                                                if ceil32(mem[_1078]) > mem[_1078]:
                                                    mem[mem[_1078] + _1078 + 196] = 0
                                                require ext_code.size(address(_799))
                                                call address(_799).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, mem[_1078 + 68], address(_811), 128, mem[_1078], mem[_1078 + 196 len ceil32(mem[_1078])]
                                            else:
                                                _1079 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_1079 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_1079 + 36] = stor5[mem[0]] * s * Mask(112, 0, _966) / (1000 * Mask(112, 0, _945)) + (stor5[mem[0]] * s)
                                                mem[_1079 + 68] = 0
                                                mem[_1079 + 100] = address(_811)
                                                mem[_1079 + 132] = 128
                                                mem[_1079 + 164] = mem[_1079]
                                                t = 0
                                                while t < mem[_1079]:
                                                    mem[t + _1079 + 196] = mem[t + _1079 + 32]
                                                    t = t + 32
                                                    continue 
                                                if ceil32(mem[_1079]) > mem[_1079]:
                                                    mem[mem[_1079] + _1079 + 196] = 0
                                                require ext_code.size(address(_799))
                                                call address(_799).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_1079 + 36], 0, address(_811), 128, mem[_1079], mem[_1079 + 196 len ceil32(mem[_1079])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor[_902] * s * Mask(112, 0, _966) / (1000 * Mask(112, 0, _945)) + (stor[_902] * s)
                                            continue 
                                        require (1000 * mem[_934 + 50 len 14]) + (stor5[mem[0]] * s)
                                        if address(_780) == address(_780):
                                            _1080 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1080 + 36] = 0
                                            mem[_1080 + 68] = stor5[mem[0]] * s * Mask(112, 0, _945) / (1000 * Mask(112, 0, _966)) + (stor5[mem[0]] * s)
                                            mem[_1080 + 100] = address(_811)
                                            mem[_1080 + 132] = 128
                                            mem[_1080 + 164] = mem[_1080]
                                            t = 0
                                            while t < mem[_1080]:
                                                mem[t + _1080 + 196] = mem[t + _1080 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1080]) > mem[_1080]:
                                                mem[mem[_1080] + _1080 + 196] = 0
                                            require ext_code.size(address(_799))
                                            call address(_799).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, mem[_1080 + 68], address(_811), 128, mem[_1080], mem[_1080 + 196 len ceil32(mem[_1080])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor[_902] * s * Mask(112, 0, _945) / (1000 * Mask(112, 0, _966)) + (stor[_902] * s)
                                            continue 
                                        _1081 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1081 + 36] = stor5[mem[0]] * s * Mask(112, 0, _945) / (1000 * Mask(112, 0, _966)) + (stor5[mem[0]] * s)
                                        mem[_1081 + 68] = 0
                                        mem[_1081 + 100] = address(_811)
                                        mem[_1081 + 132] = 128
                                        mem[_1081 + 164] = mem[_1081]
                                        t = 0
                                        while t < mem[_1081]:
                                            mem[t + _1081 + 196] = mem[t + _1081 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1081]) > mem[_1081]:
                                            mem[mem[_1081] + _1081 + 196] = 0
                                        require ext_code.size(address(_799))
                                        call address(_799).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args stor5[mem[0]] * s * Mask(112, 0, _945) / (1000 * Mask(112, 0, _966)) + (stor5[mem[0]] * s), 0, address(_811), 128, mem[_1081], mem[_1081 + 196 len ceil32(mem[_1081])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor5[mem[0]] * s * Mask(112, 0, _945) / (1000 * Mask(112, 0, _966)) + (stor5[mem[0]] * s)
                                        continue 
                                    _879 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_879] == mem[_879 + 12 len 20]
                                    mem[0] = mem[_879 + 12 len 20]
                                    mem[32] = 5
                                    _903 = sha3(mem[0], 5)
                                    if stor5[mem[0]] <= 0:
                                        revert with 0, '13'
                                    require ext_code.size(address(_799))
                                    staticcall address(_799).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _935 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _947 = mem[_935]
                                    require mem[_935] == mem[_935 + 18 len 14]
                                    _967 = mem[_935 + 32]
                                    require mem[_935 + 32] == mem[_935 + 50 len 14]
                                    require mem[_935 + 64] == mem[_935 + 92 len 4]
                                    if address(_780) == address(_790):
                                        require (1000 * mem[_935 + 18 len 14]) + (stor5[mem[0]] * s)
                                        if address(_780) == address(_790):
                                            _1082 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1082 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1082 + 36] = 0
                                            mem[_1082 + 68] = stor5[mem[0]] * s * Mask(112, 0, _967) / (1000 * Mask(112, 0, _947)) + (stor5[mem[0]] * s)
                                            mem[_1082 + 100] = address(_811)
                                            mem[_1082 + 132] = 128
                                            mem[_1082 + 164] = mem[_1082]
                                            t = 0
                                            while t < mem[_1082]:
                                                mem[t + _1082 + 196] = mem[t + _1082 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1082]) > mem[_1082]:
                                                mem[mem[_1082] + _1082 + 196] = 0
                                            require ext_code.size(address(_799))
                                            call address(_799).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, mem[_1082 + 68], address(_811), 128, mem[_1082], mem[_1082 + 196 len ceil32(mem[_1082])]
                                        else:
                                            _1083 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1083 + 36] = stor5[mem[0]] * s * Mask(112, 0, _967) / (1000 * Mask(112, 0, _947)) + (stor5[mem[0]] * s)
                                            mem[_1083 + 68] = 0
                                            mem[_1083 + 100] = address(_811)
                                            mem[_1083 + 132] = 128
                                            mem[_1083 + 164] = mem[_1083]
                                            t = 0
                                            while t < mem[_1083]:
                                                mem[t + _1083 + 196] = mem[t + _1083 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1083]) > mem[_1083]:
                                                mem[mem[_1083] + _1083 + 196] = 0
                                            require ext_code.size(address(_799))
                                            call address(_799).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args mem[_1083 + 36], 0, address(_811), 128, mem[_1083], mem[_1083 + 196 len ceil32(mem[_1083])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor[_903] * s * Mask(112, 0, _967) / (1000 * Mask(112, 0, _947)) + (stor[_903] * s)
                                        continue 
                                    require (1000 * mem[_935 + 50 len 14]) + (stor5[mem[0]] * s)
                                    if address(_780) == address(_790):
                                        _1084 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1084 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1084 + 36] = 0
                                        mem[_1084 + 68] = stor5[mem[0]] * s * Mask(112, 0, _947) / (1000 * Mask(112, 0, _967)) + (stor5[mem[0]] * s)
                                        mem[_1084 + 100] = address(_811)
                                        mem[_1084 + 132] = 128
                                        mem[_1084 + 164] = mem[_1084]
                                        t = 0
                                        while t < mem[_1084]:
                                            mem[t + _1084 + 196] = mem[t + _1084 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1084]) > mem[_1084]:
                                            mem[mem[_1084] + _1084 + 196] = 0
                                        require ext_code.size(address(_799))
                                        call address(_799).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, mem[_1084 + 68], address(_811), 128, mem[_1084], mem[_1084 + 196 len ceil32(mem[_1084])]
                                    else:
                                        _1085 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1085 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1085 + 36] = stor5[mem[0]] * s * Mask(112, 0, _947) / (1000 * Mask(112, 0, _967)) + (stor5[mem[0]] * s)
                                        mem[_1085 + 68] = 0
                                        mem[_1085 + 100] = address(_811)
                                        mem[_1085 + 132] = 128
                                        mem[_1085 + 164] = mem[_1085]
                                        t = 0
                                        while t < mem[_1085]:
                                            mem[t + _1085 + 196] = mem[t + _1085 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1085]) > mem[_1085]:
                                            mem[mem[_1085] + _1085 + 196] = 0
                                        require ext_code.size(address(_799))
                                        call address(_799).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[_1085 + 36], 0, address(_811), 128, mem[_1085], mem[_1085 + 196 len ceil32(mem[_1085])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = stor[_903] * s * Mask(112, 0, _947) / (1000 * Mask(112, 0, _967)) + (stor[_903] * s)
                                    continue 
                                if s < (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                                    revert with 0, '12'
                                _810 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_810] = 0
                                mem[_810 + 32] = 0
                                _817 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_817] = stor3
                                mem[_817 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_817]
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
                                    stor3 = mem[_817] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_817 + 32]
                            else:
                                mem[(7 * ceil32(return_data.size)) + 384] = 96
                                mem[(7 * ceil32(return_data.size)) + 480] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 256
                                u = (7 * ceil32(return_data.size)) + 512
                                while idx < mem[(6 * ceil32(return_data.size)) + 224]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 416] = 224
                                _801 = mem[(6 * ceil32(return_data.size)) + 96]
                                mem[(7 * ceil32(return_data.size)) + 608] = mem[(6 * ceil32(return_data.size)) + 96]
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 128
                                u = (7 * ceil32(return_data.size)) + 640
                                while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 448] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]
                                _1361 = mem[64]
                                mem[mem[64]] = (7 * ceil32(return_data.size)) + (32 * _801) + -mem[64] + 608
                                mem[64] = (7 * ceil32(return_data.size)) + (32 * _801) + 640
                                mem[(7 * ceil32(return_data.size)) + (32 * _801) + 640] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + (32 * _801) + 644] = this.address
                                mem[(7 * ceil32(return_data.size)) + (32 * _801) + 676] = (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1
                                mem[(7 * ceil32(return_data.size)) + (32 * _801) + 708] = 96
                                _1397 = mem[_1361]
                                mem[(7 * ceil32(return_data.size)) + (32 * _801) + 740] = mem[_1361]
                                mem[(7 * ceil32(return_data.size)) + (32 * _801) + 772 len ceil32(_1397)] = mem[_1361 + 32 len ceil32(_1397)]
                                if ceil32(_1397) > _1397:
                                    mem[_1397 + (7 * ceil32(return_data.size)) + (32 * _801) + 772] = 0
                                require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                                call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1, 96, mem[(7 * ceil32(return_data.size)) + (32 * _801) + 740 len ceil32(_1397) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = stor3
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[(7 * ceil32(return_data.size)) + (32 * _801) + 768] = 0xda91a10100000000000000000000000000000000000000000000000000000000
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
                                    _783 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 96]
                                    _792 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 128]
                                    require idx < mem[(6 * ceil32(return_data.size)) + 224]
                                    _802 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 256]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 224]
                                    _813 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 256]
                                    require ext_code.size(mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20])
                                    staticcall mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20].factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 140 len 20] < mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 140 len 20]:
                                        _880 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_880] == mem[_880 + 12 len 20]
                                        mem[0] = mem[_880 + 12 len 20]
                                        mem[32] = 5
                                        _904 = sha3(mem[0], 5)
                                        if stor5[mem[0]] <= 0:
                                            revert with 0, '13'
                                        require ext_code.size(address(_802))
                                        staticcall address(_802).getReserves() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _936 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _950 = mem[_936]
                                        require mem[_936] == mem[_936 + 18 len 14]
                                        _968 = mem[_936 + 32]
                                        require mem[_936 + 32] == mem[_936 + 50 len 14]
                                        require mem[_936 + 64] == mem[_936 + 92 len 4]
                                        if address(_783) == address(_783):
                                            require (1000 * mem[_936 + 18 len 14]) + (stor5[mem[0]] * s)
                                            if address(_783) == address(_783):
                                                _1088 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_1088 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_1088 + 36] = 0
                                                mem[_1088 + 68] = stor5[mem[0]] * s * Mask(112, 0, _968) / (1000 * Mask(112, 0, _950)) + (stor5[mem[0]] * s)
                                                mem[_1088 + 100] = address(_813)
                                                mem[_1088 + 132] = 128
                                                mem[_1088 + 164] = mem[_1088]
                                                t = 0
                                                while t < mem[_1088]:
                                                    mem[t + _1088 + 196] = mem[t + _1088 + 32]
                                                    t = t + 32
                                                    continue 
                                                if ceil32(mem[_1088]) > mem[_1088]:
                                                    mem[mem[_1088] + _1088 + 196] = 0
                                                require ext_code.size(address(_802))
                                                call address(_802).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, mem[_1088 + 68], address(_813), 128, mem[_1088], mem[_1088 + 196 len ceil32(mem[_1088])]
                                            else:
                                                _1089 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_1089 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_1089 + 36] = stor5[mem[0]] * s * Mask(112, 0, _968) / (1000 * Mask(112, 0, _950)) + (stor5[mem[0]] * s)
                                                mem[_1089 + 68] = 0
                                                mem[_1089 + 100] = address(_813)
                                                mem[_1089 + 132] = 128
                                                mem[_1089 + 164] = mem[_1089]
                                                t = 0
                                                while t < mem[_1089]:
                                                    mem[t + _1089 + 196] = mem[t + _1089 + 32]
                                                    t = t + 32
                                                    continue 
                                                if ceil32(mem[_1089]) > mem[_1089]:
                                                    mem[mem[_1089] + _1089 + 196] = 0
                                                require ext_code.size(address(_802))
                                                call address(_802).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args mem[_1089 + 36], 0, address(_813), 128, mem[_1089], mem[_1089 + 196 len ceil32(mem[_1089])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor[_904] * s * Mask(112, 0, _968) / (1000 * Mask(112, 0, _950)) + (stor[_904] * s)
                                            continue 
                                        require (1000 * mem[_936 + 50 len 14]) + (stor5[mem[0]] * s)
                                        if address(_783) == address(_783):
                                            _1090 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1090 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1090 + 36] = 0
                                            mem[_1090 + 68] = stor5[mem[0]] * s * Mask(112, 0, _950) / (1000 * Mask(112, 0, _968)) + (stor5[mem[0]] * s)
                                            mem[_1090 + 100] = address(_813)
                                            mem[_1090 + 132] = 128
                                            mem[_1090 + 164] = mem[_1090]
                                            t = 0
                                            while t < mem[_1090]:
                                                mem[t + _1090 + 196] = mem[t + _1090 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1090]) > mem[_1090]:
                                                mem[mem[_1090] + _1090 + 196] = 0
                                            require ext_code.size(address(_802))
                                            call address(_802).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, stor5[mem[0]] * s * Mask(112, 0, _950) / (1000 * Mask(112, 0, _968)) + (stor5[mem[0]] * s), address(_813), 128, mem[_1090], mem[_1090 + 196 len ceil32(mem[_1090])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor5[mem[0]] * s * Mask(112, 0, _950) / (1000 * Mask(112, 0, _968)) + (stor5[mem[0]] * s)
                                            continue 
                                        _1091 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1091 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1091 + 36] = stor5[mem[0]] * s * Mask(112, 0, _950) / (1000 * Mask(112, 0, _968)) + (stor5[mem[0]] * s)
                                        mem[_1091 + 68] = 0
                                        mem[_1091 + 100] = address(_813)
                                        mem[_1091 + 132] = 128
                                        mem[_1091 + 164] = mem[_1091]
                                        t = 0
                                        while t < mem[_1091]:
                                            mem[t + _1091 + 196] = mem[t + _1091 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1091]) > mem[_1091]:
                                            mem[mem[_1091] + _1091 + 196] = 0
                                        require ext_code.size(address(_802))
                                        call address(_802).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[_1091 + 36], 0, address(_813), 128, mem[_1091], mem[_1091 + 196 len ceil32(mem[_1091])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor[_904] * s * Mask(112, 0, _950) / (1000 * Mask(112, 0, _968)) + (stor[_904] * s)
                                        continue 
                                    _881 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_881] == mem[_881 + 12 len 20]
                                    mem[0] = mem[_881 + 12 len 20]
                                    mem[32] = 5
                                    _905 = sha3(mem[0], 5)
                                    if stor5[mem[0]] <= 0:
                                        revert with 0, '13'
                                    require ext_code.size(address(_802))
                                    staticcall address(_802).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _937 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _952 = mem[_937]
                                    require mem[_937] == mem[_937 + 18 len 14]
                                    _969 = mem[_937 + 32]
                                    require mem[_937 + 32] == mem[_937 + 50 len 14]
                                    require mem[_937 + 64] == mem[_937 + 92 len 4]
                                    if address(_783) == address(_792):
                                        require (1000 * mem[_937 + 18 len 14]) + (stor5[mem[0]] * s)
                                        if address(_783) == address(_792):
                                            _1092 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1092 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1092 + 36] = 0
                                            mem[_1092 + 68] = stor5[mem[0]] * s * Mask(112, 0, _969) / (1000 * Mask(112, 0, _952)) + (stor5[mem[0]] * s)
                                            mem[_1092 + 100] = address(_813)
                                            mem[_1092 + 132] = 128
                                            mem[_1092 + 164] = mem[_1092]
                                            t = 0
                                            while t < mem[_1092]:
                                                mem[t + _1092 + 196] = mem[t + _1092 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1092]) > mem[_1092]:
                                                mem[mem[_1092] + _1092 + 196] = 0
                                            require ext_code.size(address(_802))
                                            call address(_802).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, stor5[mem[0]] * s * Mask(112, 0, _969) / (1000 * Mask(112, 0, _952)) + (stor5[mem[0]] * s), address(_813), 128, mem[_1092], mem[_1092 + 196 len ceil32(mem[_1092])]
                                        else:
                                            _1093 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1093 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1093 + 36] = stor5[mem[0]] * s * Mask(112, 0, _969) / (1000 * Mask(112, 0, _952)) + (stor5[mem[0]] * s)
                                            mem[_1093 + 68] = 0
                                            mem[_1093 + 100] = address(_813)
                                            mem[_1093 + 132] = 128
                                            mem[_1093 + 164] = mem[_1093]
                                            t = 0
                                            while t < mem[_1093]:
                                                mem[t + _1093 + 196] = mem[t + _1093 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1093]) > mem[_1093]:
                                                mem[mem[_1093] + _1093 + 196] = 0
                                            require ext_code.size(address(_802))
                                            call address(_802).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args stor5[mem[0]] * s * Mask(112, 0, _969) / (1000 * Mask(112, 0, _952)) + (stor5[mem[0]] * s), 0, address(_813), 128, mem[_1093], mem[_1093 + 196 len ceil32(mem[_1093])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor5[mem[0]] * s * Mask(112, 0, _969) / (1000 * Mask(112, 0, _952)) + (stor5[mem[0]] * s)
                                        continue 
                                    require (1000 * mem[_937 + 50 len 14]) + (stor5[mem[0]] * s)
                                    if address(_783) == address(_792):
                                        _1094 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1094 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1094 + 36] = 0
                                        mem[_1094 + 68] = stor5[mem[0]] * s * Mask(112, 0, _952) / (1000 * Mask(112, 0, _969)) + (stor5[mem[0]] * s)
                                        mem[_1094 + 100] = address(_813)
                                        mem[_1094 + 132] = 128
                                        mem[_1094 + 164] = mem[_1094]
                                        t = 0
                                        while t < mem[_1094]:
                                            mem[t + _1094 + 196] = mem[t + _1094 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1094]) > mem[_1094]:
                                            mem[mem[_1094] + _1094 + 196] = 0
                                        require ext_code.size(address(_802))
                                        call address(_802).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, stor5[mem[0]] * s * Mask(112, 0, _952) / (1000 * Mask(112, 0, _969)) + (stor5[mem[0]] * s), address(_813), 128, mem[_1094], mem[_1094 + 196 len ceil32(mem[_1094])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor5[mem[0]] * s * Mask(112, 0, _952) / (1000 * Mask(112, 0, _969)) + (stor5[mem[0]] * s)
                                        continue 
                                    _1095 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1095 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1095 + 36] = stor5[mem[0]] * s * Mask(112, 0, _952) / (1000 * Mask(112, 0, _969)) + (stor5[mem[0]] * s)
                                    mem[_1095 + 68] = 0
                                    mem[_1095 + 100] = address(_813)
                                    mem[_1095 + 132] = 128
                                    mem[_1095 + 164] = mem[_1095]
                                    t = 0
                                    while t < mem[_1095]:
                                        mem[t + _1095 + 196] = mem[t + _1095 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1095]) > mem[_1095]:
                                        mem[mem[_1095] + _1095 + 196] = 0
                                    require ext_code.size(address(_802))
                                    call address(_802).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[_1095 + 36], 0, address(_813), 128, mem[_1095], mem[_1095 + 196 len ceil32(mem[_1095])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = stor[_905] * s * Mask(112, 0, _952) / (1000 * Mask(112, 0, _969)) + (stor[_905] * s)
                                    continue 
                                if s < (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                                    revert with 0, '12'
                                _812 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_812] = 0
                                mem[_812 + 32] = 0
                                _818 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_818] = stor3
                                mem[_818 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_818]
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
                                    stor3 = mem[_818] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_818 + 32]
                            else:
                                mem[(7 * ceil32(return_data.size)) + 384] = 96
                                mem[(7 * ceil32(return_data.size)) + 480] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 256
                                u = (7 * ceil32(return_data.size)) + 512
                                while idx < mem[(6 * ceil32(return_data.size)) + 224]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 416] = 224
                                _804 = mem[(6 * ceil32(return_data.size)) + 96]
                                mem[(7 * ceil32(return_data.size)) + 608] = mem[(6 * ceil32(return_data.size)) + 96]
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 128
                                u = (7 * ceil32(return_data.size)) + 640
                                while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 448] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]
                                _1378 = mem[64]
                                mem[mem[64]] = (7 * ceil32(return_data.size)) + (32 * _804) + -mem[64] + 608
                                mem[64] = (7 * ceil32(return_data.size)) + (32 * _804) + 640
                                mem[(7 * ceil32(return_data.size)) + (32 * _804) + 640] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + (32 * _804) + 644] = this.address
                                mem[(7 * ceil32(return_data.size)) + (32 * _804) + 676] = (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1
                                mem[(7 * ceil32(return_data.size)) + (32 * _804) + 708] = 96
                                _1398 = mem[_1378]
                                mem[(7 * ceil32(return_data.size)) + (32 * _804) + 740] = mem[_1378]
                                mem[(7 * ceil32(return_data.size)) + (32 * _804) + 772 len ceil32(_1398)] = mem[_1378 + 32 len ceil32(_1398)]
                                if ceil32(_1398) > _1398:
                                    mem[_1398 + (7 * ceil32(return_data.size)) + (32 * _804) + 772] = 0
                                require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                                call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[0]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1, 96, mem[(7 * ceil32(return_data.size)) + (32 * _804) + 740 len ceil32(_1398) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = stor3
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[(7 * ceil32(return_data.size)) + (32 * _804) + 768] = 0xda91a10100000000000000000000000000000000000000000000000000000000
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
                                    _786 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 128]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 96]
                                    _794 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 128]
                                    require idx < mem[(6 * ceil32(return_data.size)) + 224]
                                    _805 = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 256]
                                    require idx + 1 < mem[(6 * ceil32(return_data.size)) + 224]
                                    _815 = mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 256]
                                    require ext_code.size(mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20])
                                    staticcall mem[(32 * idx) + (6 * ceil32(return_data.size)) + 268 len 20].factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 140 len 20] < mem[(32 * idx + 1) + (6 * ceil32(return_data.size)) + 140 len 20]:
                                        _882 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_882] == mem[_882 + 12 len 20]
                                        mem[0] = mem[_882 + 12 len 20]
                                        mem[32] = 5
                                        _906 = sha3(mem[0], 5)
                                        if stor5[mem[0]] <= 0:
                                            revert with 0, '13'
                                        require ext_code.size(address(_805))
                                        staticcall address(_805).getReserves() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _938 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _955 = mem[_938]
                                        require mem[_938] == mem[_938 + 18 len 14]
                                        _970 = mem[_938 + 32]
                                        require mem[_938 + 32] == mem[_938 + 50 len 14]
                                        require mem[_938 + 64] == mem[_938 + 92 len 4]
                                        if address(_786) == address(_786):
                                            require (1000 * mem[_938 + 18 len 14]) + (stor5[mem[0]] * s)
                                            if address(_786) == address(_786):
                                                _1098 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_1098 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_1098 + 36] = 0
                                                mem[_1098 + 68] = stor5[mem[0]] * s * Mask(112, 0, _970) / (1000 * Mask(112, 0, _955)) + (stor5[mem[0]] * s)
                                                mem[_1098 + 100] = address(_815)
                                                mem[_1098 + 132] = 128
                                                mem[_1098 + 164] = mem[_1098]
                                                t = 0
                                                while t < mem[_1098]:
                                                    mem[t + _1098 + 196] = mem[t + _1098 + 32]
                                                    t = t + 32
                                                    continue 
                                                if ceil32(mem[_1098]) > mem[_1098]:
                                                    mem[mem[_1098] + _1098 + 196] = 0
                                                require ext_code.size(address(_805))
                                                call address(_805).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, stor5[mem[0]] * s * Mask(112, 0, _970) / (1000 * Mask(112, 0, _955)) + (stor5[mem[0]] * s), address(_815), 128, mem[_1098], mem[_1098 + 196 len ceil32(mem[_1098])]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = stor5[mem[0]] * s * Mask(112, 0, _970) / (1000 * Mask(112, 0, _955)) + (stor5[mem[0]] * s)
                                                continue 
                                            _1099 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1099 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1099 + 36] = stor5[mem[0]] * s * Mask(112, 0, _970) / (1000 * Mask(112, 0, _955)) + (stor5[mem[0]] * s)
                                            mem[_1099 + 68] = 0
                                            mem[_1099 + 100] = address(_815)
                                            mem[_1099 + 132] = 128
                                            mem[_1099 + 164] = mem[_1099]
                                            t = 0
                                            while t < mem[_1099]:
                                                mem[t + _1099 + 196] = mem[t + _1099 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1099]) > mem[_1099]:
                                                mem[mem[_1099] + _1099 + 196] = 0
                                            require ext_code.size(address(_805))
                                            call address(_805).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args mem[_1099 + 36], 0, address(_815), 128, mem[_1099], mem[_1099 + 196 len ceil32(mem[_1099])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor[_906] * s * Mask(112, 0, _970) / (1000 * Mask(112, 0, _955)) + (stor[_906] * s)
                                            continue 
                                        require (1000 * mem[_938 + 50 len 14]) + (stor5[mem[0]] * s)
                                        if address(_786) == address(_786):
                                            _1100 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1100 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1100 + 36] = 0
                                            mem[_1100 + 68] = stor5[mem[0]] * s * Mask(112, 0, _955) / (1000 * Mask(112, 0, _970)) + (stor5[mem[0]] * s)
                                            mem[_1100 + 100] = address(_815)
                                            mem[_1100 + 132] = 128
                                            mem[_1100 + 164] = mem[_1100]
                                            t = 0
                                            while t < mem[_1100]:
                                                mem[t + _1100 + 196] = mem[t + _1100 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1100]) > mem[_1100]:
                                                mem[mem[_1100] + _1100 + 196] = 0
                                            require ext_code.size(address(_805))
                                            call address(_805).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, mem[_1100 + 68], address(_815), 128, mem[_1100], mem[_1100 + 196 len ceil32(mem[_1100])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor[_906] * s * Mask(112, 0, _955) / (1000 * Mask(112, 0, _970)) + (stor[_906] * s)
                                            continue 
                                        _1101 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1101 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1101 + 36] = stor5[mem[0]] * s * Mask(112, 0, _955) / (1000 * Mask(112, 0, _970)) + (stor5[mem[0]] * s)
                                        mem[_1101 + 68] = 0
                                        mem[_1101 + 100] = address(_815)
                                        mem[_1101 + 132] = 128
                                        mem[_1101 + 164] = mem[_1101]
                                        t = 0
                                        while t < mem[_1101]:
                                            mem[t + _1101 + 196] = mem[t + _1101 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1101]) > mem[_1101]:
                                            mem[mem[_1101] + _1101 + 196] = 0
                                        require ext_code.size(address(_805))
                                        call address(_805).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args stor5[mem[0]] * s * Mask(112, 0, _955) / (1000 * Mask(112, 0, _970)) + (stor5[mem[0]] * s), 0, address(_815), 128, mem[_1101], mem[_1101 + 196 len ceil32(mem[_1101])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor5[mem[0]] * s * Mask(112, 0, _955) / (1000 * Mask(112, 0, _970)) + (stor5[mem[0]] * s)
                                        continue 
                                    _883 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_883] == mem[_883 + 12 len 20]
                                    mem[0] = mem[_883 + 12 len 20]
                                    mem[32] = 5
                                    _907 = sha3(mem[0], 5)
                                    if stor5[mem[0]] <= 0:
                                        revert with 0, '13'
                                    require ext_code.size(address(_805))
                                    staticcall address(_805).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _939 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _957 = mem[_939]
                                    require mem[_939] == mem[_939 + 18 len 14]
                                    _971 = mem[_939 + 32]
                                    require mem[_939 + 32] == mem[_939 + 50 len 14]
                                    require mem[_939 + 64] == mem[_939 + 92 len 4]
                                    if address(_786) == address(_794):
                                        require (1000 * mem[_939 + 18 len 14]) + (stor5[mem[0]] * s)
                                        if address(_786) == address(_794):
                                            _1102 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1102 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_1102 + 36] = 0
                                            mem[_1102 + 68] = stor5[mem[0]] * s * Mask(112, 0, _971) / (1000 * Mask(112, 0, _957)) + (stor5[mem[0]] * s)
                                            mem[_1102 + 100] = address(_815)
                                            mem[_1102 + 132] = 128
                                            mem[_1102 + 164] = mem[_1102]
                                            t = 0
                                            while t < mem[_1102]:
                                                mem[t + _1102 + 196] = mem[t + _1102 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_1102]) > mem[_1102]:
                                                mem[mem[_1102] + _1102 + 196] = 0
                                            require ext_code.size(address(_805))
                                            call address(_805).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, stor5[mem[0]] * s * Mask(112, 0, _971) / (1000 * Mask(112, 0, _957)) + (stor5[mem[0]] * s), address(_815), 128, mem[_1102], mem[_1102 + 196 len ceil32(mem[_1102])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = stor5[mem[0]] * s * Mask(112, 0, _971) / (1000 * Mask(112, 0, _957)) + (stor5[mem[0]] * s)
                                            continue 
                                        _1103 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1103 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1103 + 36] = stor5[mem[0]] * s * Mask(112, 0, _971) / (1000 * Mask(112, 0, _957)) + (stor5[mem[0]] * s)
                                        mem[_1103 + 68] = 0
                                        mem[_1103 + 100] = address(_815)
                                        mem[_1103 + 132] = 128
                                        mem[_1103 + 164] = mem[_1103]
                                        t = 0
                                        while t < mem[_1103]:
                                            mem[t + _1103 + 196] = mem[t + _1103 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1103]) > mem[_1103]:
                                            mem[mem[_1103] + _1103 + 196] = 0
                                        require ext_code.size(address(_805))
                                        call address(_805).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[_1103 + 36], 0, address(_815), 128, mem[_1103], mem[_1103 + 196 len ceil32(mem[_1103])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor[_907] * s * Mask(112, 0, _971) / (1000 * Mask(112, 0, _957)) + (stor[_907] * s)
                                        continue 
                                    require (1000 * mem[_939 + 50 len 14]) + (stor5[mem[0]] * s)
                                    if address(_786) == address(_794):
                                        _1104 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1104 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_1104 + 36] = 0
                                        mem[_1104 + 68] = stor5[mem[0]] * s * Mask(112, 0, _957) / (1000 * Mask(112, 0, _971)) + (stor5[mem[0]] * s)
                                        mem[_1104 + 100] = address(_815)
                                        mem[_1104 + 132] = 128
                                        mem[_1104 + 164] = mem[_1104]
                                        t = 0
                                        while t < mem[_1104]:
                                            mem[t + _1104 + 196] = mem[t + _1104 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_1104]) > mem[_1104]:
                                            mem[mem[_1104] + _1104 + 196] = 0
                                        require ext_code.size(address(_805))
                                        call address(_805).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, stor5[mem[0]] * s * Mask(112, 0, _957) / (1000 * Mask(112, 0, _971)) + (stor5[mem[0]] * s), address(_815), 128, mem[_1104], mem[_1104 + 196 len ceil32(mem[_1104])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = stor5[mem[0]] * s * Mask(112, 0, _957) / (1000 * Mask(112, 0, _971)) + (stor5[mem[0]] * s)
                                        continue 
                                    _1105 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1105 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1105 + 36] = stor5[mem[0]] * s * Mask(112, 0, _957) / (1000 * Mask(112, 0, _971)) + (stor5[mem[0]] * s)
                                    mem[_1105 + 68] = 0
                                    mem[_1105 + 100] = address(_815)
                                    mem[_1105 + 132] = 128
                                    mem[_1105 + 164] = mem[_1105]
                                    t = 0
                                    while t < mem[_1105]:
                                        mem[t + _1105 + 196] = mem[t + _1105 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1105]) > mem[_1105]:
                                        mem[mem[_1105] + _1105 + 196] = 0
                                    require ext_code.size(address(_805))
                                    call address(_805).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[_1105 + 36], 0, address(_815), 128, mem[_1105], mem[_1105 + 196 len ceil32(mem[_1105])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = stor[_907] * s * Mask(112, 0, _957) / (1000 * Mask(112, 0, _971)) + (stor[_907] * s)
                                    continue 
                                if s < (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + stor1:
                                    revert with 0, '12'
                                _814 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_814] = 0
                                mem[_814 + 32] = 0
                                _819 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_819] = stor3
                                mem[_819 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_819]
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
                                    stor3 = mem[_819] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_819 + 32]
                            else:
                                mem[(7 * ceil32(return_data.size)) + 384] = 96
                                mem[(7 * ceil32(return_data.size)) + 480] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 256
                                u = (7 * ceil32(return_data.size)) + 512
                                while idx < mem[(6 * ceil32(return_data.size)) + 224]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 416] = 224
                                _807 = mem[(6 * ceil32(return_data.size)) + 96]
                                mem[(7 * ceil32(return_data.size)) + 608] = mem[(6 * ceil32(return_data.size)) + 96]
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 128
                                u = (7 * ceil32(return_data.size)) + 640
                                while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 448] = t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]
                                _1395 = mem[64]
                                mem[mem[64]] = (7 * ceil32(return_data.size)) + (32 * _807) + -mem[64] + 608
                                mem[64] = (7 * ceil32(return_data.size)) + (32 * _807) + 640
                                mem[(7 * ceil32(return_data.size)) + (32 * _807) + 640] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + (32 * _807) + 644] = this.address
                                mem[(7 * ceil32(return_data.size)) + (32 * _807) + 676] = (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1
                                mem[(7 * ceil32(return_data.size)) + (32 * _807) + 708] = 96
                                _1399 = mem[_1395]
                                mem[(7 * ceil32(return_data.size)) + (32 * _807) + 740] = mem[_1395]
                                mem[(7 * ceil32(return_data.size)) + (32 * _807) + 772 len ceil32(_1399)] = mem[_1395 + 32 len ceil32(_1399)]
                                if ceil32(_1399) > _1399:
                                    mem[_1399 + (7 * ceil32(return_data.size)) + (32 * _807) + 772] = 0
                                require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                                call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t - (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (stor5[ext_call.return_data[12 len 20]] * Mask(112, 0, ext_call.return_data[32]))) / stor5[ext_call.return_data[12 len 20]]) + -ext_call.return_data[0] + 1, 96, mem[(7 * ceil32(return_data.size)) + (32 * _807) + 740 len ceil32(_1399) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = stor3
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[(7 * ceil32(return_data.size)) + (32 * _807) + 768] = 0xda91a10100000000000000000000000000000000000000000000000000000000
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
