contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function concurrentCanExec(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 1
}

function estimateExecGasDebit(address arg1, bytes arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = 0
    call arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0, 'UnexpectedReturndata', 0, 0 >> 24, 0
        return 1, 1
    mem[96] = return_data.size
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        return 1, 1
    mem[ceil32(return_data.size) + 97] = 15
    mem[ceil32(return_data.size) + 129] = 0x4578656346616365742e657865633a0000000000000000000000000000000000
    if return_data.size % 32 != 4:
        revert with 0, 32, 35, 0, 'UnexpectedReturndata', 0, 0 >> 24, 0
    if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
        revert with 0, 32, 30, Mask(240, 16, 0, 0x4e6f4572726f7253656c6563746f72, 0) >> 16, 0
    mem[ceil32(return_data.size) + 193] = 0x4578656346616365742e657865633a0000000000000000000000000000000000
    mem[ceil32(return_data.size) + 208] = 0
    _133 = mem[164]
    mem[ceil32(return_data.size) + 208 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
    if ceil32(mem[164]) > mem[164]:
        mem[ceil32(return_data.size) + mem[164] + 208] = 0
    mem[ceil32(return_data.size) + 161] = mem[164] + 15
    mem[_133 + ceil32(return_data.size) + 208] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_133 + ceil32(return_data.size) + 212] = 32
    mem[_133 + ceil32(return_data.size) + 244] = mem[ceil32(return_data.size) + 161]
    mem[_133 + ceil32(return_data.size) + 276 len ceil32(mem[ceil32(return_data.size) + 161])] = mem[ceil32(return_data.size) + 193 len ceil32(mem[ceil32(return_data.size) + 161])]
    if ceil32(mem[ceil32(return_data.size) + 161]) > mem[ceil32(return_data.size) + 161]:
        mem[_133 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 161] + 276] = 0
    revert with 0, 
                32,
                mem[ceil32(return_data.size) + 161],
                mem[_133 + ceil32(return_data.size) + 276 len ceil32(mem[ceil32(return_data.size) + 161])]
}

function exec(address arg1, bytes arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = 0
    call arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0, 'UnexpectedReturndata', 0, 0 >> 24, 0
        emit LogExecSuccess(bool(ext_call.success), msg.sender, arg1);
    mem[96] = return_data.size
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        emit LogExecSuccess(bool(ext_call.success), msg.sender, arg1);
    mem[ceil32(return_data.size) + 97] = 15
    mem[ceil32(return_data.size) + 129] = 0x4578656346616365742e657865633a0000000000000000000000000000000000
    if return_data.size % 32 != 4:
        revert with 0, 32, 35, 0, 'UnexpectedReturndata', 0, 0 >> 24, 0
    if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
        revert with 0, 32, 30, Mask(240, 16, 0, 0x4e6f4572726f7253656c6563746f72, 0) >> 16, 0
    mem[ceil32(return_data.size) + 193] = 0x4578656346616365742e657865633a0000000000000000000000000000000000
    mem[ceil32(return_data.size) + 208] = 0
    _133 = mem[164]
    mem[ceil32(return_data.size) + 208 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
    if ceil32(mem[164]) > mem[164]:
        mem[ceil32(return_data.size) + mem[164] + 208] = 0
    mem[ceil32(return_data.size) + 161] = mem[164] + 15
    mem[_133 + ceil32(return_data.size) + 208] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_133 + ceil32(return_data.size) + 212] = 32
    mem[_133 + ceil32(return_data.size) + 244] = mem[ceil32(return_data.size) + 161]
    mem[_133 + ceil32(return_data.size) + 276 len ceil32(mem[ceil32(return_data.size) + 161])] = mem[ceil32(return_data.size) + 193 len ceil32(mem[ceil32(return_data.size) + 161])]
    if ceil32(mem[ceil32(return_data.size) + 161]) > mem[ceil32(return_data.size) + 161]:
        mem[_133 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 161] + 276] = 0
    revert with 0, 
                32,
                mem[ceil32(return_data.size) + 161],
                mem[_133 + ceil32(return_data.size) + 276 len ceil32(mem[ceil32(return_data.size) + 161])]
}



}
