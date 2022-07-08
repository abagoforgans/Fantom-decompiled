contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 sub_36a0b9ef;
uint256 period;
address stor3;
address stor4;
uint256 sub_8f05cdf5;

function sub_36a0b9ef(?) {
    return sub_36a0b9ef
}

function sub_8f05cdf5(?) {
    return sub_8f05cdf5
}

function period() {
    return period
}

function _fallback() payable {
    revert
}

function sub_98cd376d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'Only Sam!'
    sub_8f05cdf5 = arg1
}

function setPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'Only Sam!'
    period = arg1
}

function sub_a0491b7e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Only Sam!'
    stor4 = address(arg1)
}

function getCurrentRound() {
    require sub_36a0b9ef < stor0.length
    return stor0[stor1].field_512, 
           stor0[stor1].field_768,
           stor0[stor1].field_1024,
           stor0[stor1].field_1280,
           stor0[stor1].field_1536,
           stor0[stor1].field_1792,
           stor0[stor1].field_2048
}

function getNextRound() {
    require sub_36a0b9ef + 1 < stor0.length
    return stor0[stor1].field_2816, 
           stor0[stor1].field_3072,
           stor0[stor1].field_3328,
           stor0[stor1].field_3584,
           stor0[stor1].field_3840,
           stor0[stor1].field_4096,
           stor0[stor1].field_4352
}

function sub_19506fe3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor0.length
    return stor0[arg1].field_512, 
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           stor0[arg1].field_1792,
           stor0[arg1].field_2048
}

function sub_8b062114(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor0.length
    return stor0[arg1].field_512, 
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           stor0[arg1].field_1792,
           stor0[arg1].field_2048
}

function sub_3366eca8(?) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if stor3 != msg.sender:
        revert with 0, 'Only Sam!'
    require arg1 < stor0.length
    stor0[arg1].field_512 = arg2
    stor0[arg1].field_768 = arg3
    stor0[arg1].field_1024 = arg4
    stor0[arg1].field_1280 = arg5
    stor0[arg1].field_1536 = arg6
    stor0[arg1].field_1792 = arg7
    stor0[arg1].field_2048 = arg8
}

function getOracle() {
    require ext_code.size(stor4)
    staticcall stor4.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 'FTM', 3, 'USD'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 192 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    return ext_call.return_data[0]
}

function rescue(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only E.L.I.T.E. D.A.O. Treasury can have the treasures!'
    if not arg1:
        call stor3 with:
           value arg2 wei
             gas gas_remaining wei
        return bool(ext_call.success)
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_f1650a09(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor3 != msg.sender:
        revert with 0, 'Only Sam!'
    if sub_8f05cdf5 != msg.value:
        revert with 0, 'incorrect amount wagered'
    require sub_36a0b9ef + 1 < stor0.length
    if not arg2:
        if stor[(9 * stor1) + ('name', 'stor0', 0) + 10][address(arg1)].field_0:
            revert with 0, 'Dont bl again'
        require sub_36a0b9ef + 1 < stor0.length
        stor[(9 * stor1) + ('name', 'stor0', 0) + 10][address(arg1)].field_0 = 1
        stor0[stor1].field_3072++
        emit 0x4fb16473: address(arg1)
    else:
        if stor[(9 * stor1) + ('name', 'stor0', 0) + 9][address(arg1)].field_0:
            revert with 0, 'Dont bh again'
        require sub_36a0b9ef + 1 < stor0.length
        stor[(9 * stor1) + ('name', 'stor0', 0) + 9][address(arg1)].field_0 = 1
        stor0[stor1].field_2816++
        emit 0xcd7154bb: address(arg1)
}

function sub_b019e51b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
    staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1337 * 10^12:
        revert with 0, 'emit Eliteness;'
    if arg1 >= sub_36a0b9ef:
        revert with 0, 'Too early to cla'
    require arg1 < stor0.length
    require arg1 < stor0.length
    if stor0[arg1].field_1024 < stor0[arg1].field_1280:
        if bool(stor0[arg1][address(msg.sender)].field_0) != 1:
            revert with 0, 'didnt hia / claimed'
        require arg1 < stor0.length
        stor0[arg1][address(msg.sender)].field_0 = 0
    else:
        if stor0[arg1].field_1024 <= stor0[arg1].field_1280:
            revert with 0, 'Claim failed. Contact Sam4x.'
        require arg1 < stor0.length
        if bool(stor[(9 * arg1) + ('name', 'stor0', 0) + 1][address(msg.sender)].field_0) != 1:
            revert with 0, 'didnt loa / claimed'
        require arg1 < stor0.length
        stor[(9 * arg1) + ('name', 'stor0', 0) + 1][address(msg.sender)].field_0 = 0
    call msg.sender with:
       value stor0[arg1].field_2048 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Claim failed. Contact Sam4x.'
    emit Claim(msg.sender);
}

function nextRound() {
    require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
    staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1337 * 10^12:
        revert with 0, 'emit Eliteness;'
    require sub_36a0b9ef < stor0.length
    if block.timestamp <= stor0[stor1].field_1792:
        revert with 0, 'Wait more plis!'
    require ext_code.size(stor4)
    staticcall stor4.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 'FTM', 3, 'USD'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool((2 * ceil32(return_data.size)) + 192 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require sub_36a0b9ef < stor0.length
    stor0[stor1].field_1280 = ext_call.return_data[0]
    require sub_36a0b9ef + 1 < stor0.length
    stor0[stor1].field_3328 = ext_call.return_data[0]
    require sub_36a0b9ef < stor0.length
    require sub_36a0b9ef < stor0.length
    require sub_36a0b9ef < stor0.length
    if stor0[stor1].field_1024 <= stor0[stor1].field_1280:
        if stor0[stor1].field_1024 >= stor0[stor1].field_1280:
            stor0[stor1].field_2048 = 0
        else:
            require sub_36a0b9ef < stor0.length
            if stor0[stor1].field_768 * stor0[stor1].field_512 <= 0:
                stor0[stor1].field_2048 = 0
            else:
                require stor0[stor1].field_512
                require sub_36a0b9ef < stor0.length
                stor0[stor1].field_2048 = (stor0[stor1].field_512 * sub_8f05cdf5) + (stor0[stor1].field_768 * sub_8f05cdf5) / stor0[stor1].field_512
    else:
        if stor0[stor1].field_768 * stor0[stor1].field_512 > 0:
            require stor0[stor1].field_768
            require sub_36a0b9ef < stor0.length
            stor0[stor1].field_2048 = (stor0[stor1].field_512 * sub_8f05cdf5) + (stor0[stor1].field_768 * sub_8f05cdf5) / stor0[stor1].field_768
        else:
            require sub_36a0b9ef < stor0.length
            if stor0[stor1].field_1024 >= stor0[stor1].field_1280:
                stor0[stor1].field_2048 = 0
            else:
                require sub_36a0b9ef < stor0.length
                if stor0[stor1].field_768 * stor0[stor1].field_512 <= 0:
                    stor0[stor1].field_2048 = 0
                else:
                    require stor0[stor1].field_512
                    require sub_36a0b9ef < stor0.length
                    stor0[stor1].field_2048 = (stor0[stor1].field_512 * sub_8f05cdf5) + (stor0[stor1].field_768 * sub_8f05cdf5) / stor0[stor1].field_512
    stor0[stor1].field_1792 = block.timestamp
    sub_36a0b9ef++
    stor0.length++
    stor0[stor0.length].field_512 = 0
    stor0[stor0.length].field_768 = 0
    stor0[stor0.length].field_1024 = 0
    stor0[stor0.length].field_1280 = 0
    stor0[stor0.length].field_1536 = block.timestamp + period
    stor0[stor0.length].field_1792 = block.timestamp + (2 * period)
    stor0[stor0.length].field_2048 = 0
}

function bl() payable {
    require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
    staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1337 * 10^12:
        revert with 0, 'emit Eliteness;'
    if sub_8f05cdf5 != msg.value:
        revert with 0, 'incorrect amount wagered'
    require sub_36a0b9ef < stor0.length
    if block.timestamp > stor0[stor1].field_1792:
        require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
        staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 1337 * 10^12:
            revert with 0, 'emit Eliteness;'
        require sub_36a0b9ef < stor0.length
        if block.timestamp <= stor0[stor1].field_1792:
            revert with 0, 'Wait more plis!'
        require ext_code.size(stor4)
        staticcall stor4.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 'FTM', 3, 'USD'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool((4 * ceil32(return_data.size)) + 192 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require sub_36a0b9ef < stor0.length
        stor0[stor1].field_1280 = ext_call.return_data[0]
        require sub_36a0b9ef + 1 < stor0.length
        stor0[stor1].field_3328 = ext_call.return_data[0]
        require sub_36a0b9ef < stor0.length
        require sub_36a0b9ef < stor0.length
        require sub_36a0b9ef < stor0.length
        if stor0[stor1].field_1024 <= stor0[stor1].field_1280:
            if stor0[stor1].field_1024 >= stor0[stor1].field_1280:
                stor0[stor1].field_2048 = 0
            else:
                require sub_36a0b9ef < stor0.length
                if stor0[stor1].field_768 * stor0[stor1].field_512 <= 0:
                    stor0[stor1].field_2048 = 0
                else:
                    require stor0[stor1].field_512
                    require sub_36a0b9ef < stor0.length
                    stor0[stor1].field_2048 = (stor0[stor1].field_512 * sub_8f05cdf5) + (stor0[stor1].field_768 * sub_8f05cdf5) / stor0[stor1].field_512
        else:
            if stor0[stor1].field_768 * stor0[stor1].field_512 > 0:
                require stor0[stor1].field_768
                require sub_36a0b9ef < stor0.length
                stor0[stor1].field_2048 = (stor0[stor1].field_512 * sub_8f05cdf5) + (stor0[stor1].field_768 * sub_8f05cdf5) / stor0[stor1].field_768
            else:
                require sub_36a0b9ef < stor0.length
                if stor0[stor1].field_1024 >= stor0[stor1].field_1280:
                    stor0[stor1].field_2048 = 0
                else:
                    require sub_36a0b9ef < stor0.length
                    if stor0[stor1].field_768 * stor0[stor1].field_512 <= 0:
                        stor0[stor1].field_2048 = 0
                    else:
                        require stor0[stor1].field_512
                        require sub_36a0b9ef < stor0.length
                        stor0[stor1].field_2048 = (stor0[stor1].field_512 * sub_8f05cdf5) + (stor0[stor1].field_768 * sub_8f05cdf5) / stor0[stor1].field_512
        stor0[stor1].field_1792 = block.timestamp
        sub_36a0b9ef++
        stor0.length++
        stor0[stor0.length].field_512 = 0
        stor0[stor0.length].field_768 = 0
        stor0[stor0.length].field_1024 = 0
        stor0[stor0.length].field_1280 = 0
        stor0[stor0.length].field_1536 = block.timestamp + period
        stor0[stor0.length].field_1792 = block.timestamp + (2 * period)
        stor0[stor0.length].field_2048 = 0
    require sub_36a0b9ef + 1 < stor0.length
    if stor[(9 * stor1) + ('name', 'stor0', 0) + 10][address(msg.sender)].field_0:
        revert with 0, 'Dont bl again'
    require sub_36a0b9ef + 1 < stor0.length
    stor[(9 * stor1) + ('name', 'stor0', 0) + 10][address(msg.sender)].field_0 = 1
    stor0[stor1].field_3072++
    emit 0x4fb16473: msg.sender
}

function sub_fd8607e5(?) payable {
    require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
    staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1337 * 10^12:
        revert with 0, 'emit Eliteness;'
    if sub_8f05cdf5 != msg.value:
        revert with 0, 'incorrect amount wagered'
    require sub_36a0b9ef < stor0.length
    if block.timestamp > stor0[stor1].field_1792:
        require ext_code.size(0xf43cc235e686d7bc513f53fbffb61f760c3a1882)
        staticcall 0xf43cc235e686d7bc513f53fbffb61f760c3a1882.balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 1337 * 10^12:
            revert with 0, 'emit Eliteness;'
        require sub_36a0b9ef < stor0.length
        if block.timestamp <= stor0[stor1].field_1792:
            revert with 0, 'Wait more plis!'
        require ext_code.size(stor4)
        staticcall stor4.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 'FTM', 3, 'USD'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool((4 * ceil32(return_data.size)) + 192 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require sub_36a0b9ef < stor0.length
        stor0[stor1].field_1280 = ext_call.return_data[0]
        require sub_36a0b9ef + 1 < stor0.length
        stor0[stor1].field_3328 = ext_call.return_data[0]
        require sub_36a0b9ef < stor0.length
        require sub_36a0b9ef < stor0.length
        require sub_36a0b9ef < stor0.length
        if stor0[stor1].field_1024 <= stor0[stor1].field_1280:
            if stor0[stor1].field_1024 >= stor0[stor1].field_1280:
                stor0[stor1].field_2048 = 0
            else:
                require sub_36a0b9ef < stor0.length
                if stor0[stor1].field_768 * stor0[stor1].field_512 <= 0:
                    stor0[stor1].field_2048 = 0
                else:
                    require stor0[stor1].field_512
                    require sub_36a0b9ef < stor0.length
                    stor0[stor1].field_2048 = (stor0[stor1].field_512 * sub_8f05cdf5) + (stor0[stor1].field_768 * sub_8f05cdf5) / stor0[stor1].field_512
        else:
            if stor0[stor1].field_768 * stor0[stor1].field_512 > 0:
                require stor0[stor1].field_768
                require sub_36a0b9ef < stor0.length
                stor0[stor1].field_2048 = (stor0[stor1].field_512 * sub_8f05cdf5) + (stor0[stor1].field_768 * sub_8f05cdf5) / stor0[stor1].field_768
            else:
                require sub_36a0b9ef < stor0.length
                if stor0[stor1].field_1024 >= stor0[stor1].field_1280:
                    stor0[stor1].field_2048 = 0
                else:
                    require sub_36a0b9ef < stor0.length
                    if stor0[stor1].field_768 * stor0[stor1].field_512 <= 0:
                        stor0[stor1].field_2048 = 0
                    else:
                        require stor0[stor1].field_512
                        require sub_36a0b9ef < stor0.length
                        stor0[stor1].field_2048 = (stor0[stor1].field_512 * sub_8f05cdf5) + (stor0[stor1].field_768 * sub_8f05cdf5) / stor0[stor1].field_512
        stor0[stor1].field_1792 = block.timestamp
        sub_36a0b9ef++
        stor0.length++
        stor0[stor0.length].field_512 = 0
        stor0[stor0.length].field_768 = 0
        stor0[stor0.length].field_1024 = 0
        stor0[stor0.length].field_1280 = 0
        stor0[stor0.length].field_1536 = block.timestamp + period
        stor0[stor0.length].field_1792 = block.timestamp + (2 * period)
        stor0[stor0.length].field_2048 = 0
    require sub_36a0b9ef + 1 < stor0.length
    if stor[(9 * stor1) + ('name', 'stor0', 0) + 9][address(msg.sender)].field_0:
        revert with 0, 'Dont bh again'
    require sub_36a0b9ef + 1 < stor0.length
    stor[(9 * stor1) + ('name', 'stor0', 0) + 9][address(msg.sender)].field_0 = 1
    stor0[stor1].field_2816++
    emit 0xcd7154bb: msg.sender
}



}
