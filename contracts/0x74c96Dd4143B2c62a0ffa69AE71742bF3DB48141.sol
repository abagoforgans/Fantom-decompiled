contract main {




// =====================  Runtime code  =====================


address stor3608;
address storB531;

function _fallback() payable {
    if calldata.size < 4:
        if msg.sender == storB531:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
        delegate stor3608 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if upgradeTo(address arg1) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if storB531 != msg.sender:
            delegate stor3608 with:
               funct call.data[0 len 4]
                 gas gas_remaining wei
                args call.data[4 len calldata.size - 4]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            return ext_call.return_data[0 len return_data.size]
        if not ext_code.size(arg1):
            revert with 0, 'ERC1967: new implementation is not a contract'
        stor3608 = address(arg1)
        emit Upgraded(address(arg1));
    if uint32(call.func_hash) >> 224 != upgradeToAndCall(address arg1, bytes arg2):
        if implementation() == uint32(call.func_hash) >> 224:
            require not msg.value
            if msg.sender == storB531:
                return stor3608
            delegate stor3608 with:
               funct call.data[0 len 4]
                 gas gas_remaining wei
                args call.data[4 len calldata.size - 4]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            return ext_call.return_data[0 len return_data.size]
        if uint32(call.func_hash) >> 224 != changeAdmin(address arg1):
            if uint32(call.func_hash) >> 224 != unknown_0xf851a440(?????):
                if msg.sender == storB531:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
            else:
                require not msg.value
                if msg.sender == storB531:
                    return storB531
            ('iszero', ('eq', 'msg.sender', ('stor', ('name', 'storB531', 81955473079516046949633743016697847541294818689821282749996681496272635257091))))
            delegate stor3608 with:
               funct call.data[0 len 4]
                 gas gas_remaining wei
                args call.data[4 len calldata.size - 4]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            return ext_call.return_data[0 len return_data.size]
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if storB531 != msg.sender:
            delegate stor3608 with:
               funct call.data[0 len 4]
                 gas gas_remaining wei
                args call.data[4 len calldata.size - 4]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            return ext_call.return_data[0 len return_data.size]
        emit AdminChanged(storB531, address(arg1));
        if not address(arg1):
            revert with 0, 'ERC1967: new admin is the zero address'
        storB531 = address(arg1)
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if storB531 != msg.sender:
        delegate stor3608 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    mem[128] = arg2.length
    mem[160 len arg2.length] = arg2[all]
    mem[arg2.length + 160] = 0
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    stor3608 = address(arg1)
    emit Upgraded(address(arg1));
    mem[ceil32(arg2.length) + 160] = 39
    mem[ceil32(arg2.length) + 192 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
    if not ext_code.size(arg1):
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(arg2.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg2.length) + 256] = 0
    delegate address(arg1).mem[ceil32(arg2.length) + 256 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 260 len arg2.length - 4]
    if not return_data.size:
        if delegate.return_code:
        if mem[96]:
            revert with memory
              from 128
               len mem[96]
        mem[ceil32(arg2.length) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + 260] = 32
        mem[ceil32(arg2.length) + 292] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + 324 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
        if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]:
            mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + 324] = 0
        revert with memory
          from ceil32(arg2.length) + 256
           len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 68
    mem[ceil32(arg2.length) + 256] = return_data.size
    mem[ceil32(arg2.length) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if delegate.return_code:
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 261] = 32
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 293] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 325 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]:
        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + ceil32(return_data.size) + 325] = 0
    revert with memory
      from ceil32(arg2.length) + ceil32(return_data.size) + 257
       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 68
}



}
