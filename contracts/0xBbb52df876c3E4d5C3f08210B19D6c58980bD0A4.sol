contract main {




// =====================  Runtime code  =====================


const isPriceOracle = 1


address owner;
address operatorAddress;
address baseTokenAddress;
uint256 sub_10621da4;
uint8 sub_dd7bf52f;
mapping of uint256 sub_e3c7883b;
mapping of uint256 sub_37373e09;
array of struct oracles;
array of struct routers;
uint256 interval;
uint256 updateTime;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of address stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of address stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of address stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432782;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of address stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of address stor110349606679412691172957834289542550319383271247755660854362242977991410020070;

function sub_10621da4(?) payable {
    return sub_10621da4
}

function sub_37373e09(?) payable {
    require calldata.size - 4 >= 32
    return sub_37373e09[arg1]
}

function routers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < routers.length
    return bool(routers[arg1].field_0), routers[arg1].field_256, routers[arg1].field_512, routers[arg1].field_768
}

function operator() payable {
    return operatorAddress
}

function oracles(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < oracles.length
    return bool(oracles[arg1].field_0), 
           oracles[arg1].field_256,
           oracles[arg1].field_512,
           oracles[arg1].field_768,
           oracles[arg1].field_1024,
           oracles[arg1].field_1280,
           oracles[arg1].field_1536
}

function owner() payable {
    return owner
}

function interval() payable {
    return interval
}

function baseToken() payable {
    return baseTokenAddress
}

function updateTime() payable {
    return updateTime
}

function sub_dd7bf52f(?) payable {
    return bool(sub_dd7bf52f)
}

function sub_e3c7883b(?) payable {
    require calldata.size - 4 >= 32
    return sub_e3c7883b[arg1]
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setInterval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    interval = arg1
}

function sub_108b3a9a(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    baseTokenAddress = arg1
    sub_10621da4 = arg2
    sub_dd7bf52f = uint8(arg3)
}

function sub_0aa33f75(?) payable {
    require calldata.size - 4 >= 32
    if not sub_e3c7883b[address(arg1)]:
        return 0
    require sub_e3c7883b[address(arg1)] - 1 < oracles.length
    return bool(oracles[stor5[address(arg1)]].field_0)
}

function getBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x736f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function sub_0d67fe7a(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_37373e09[address(arg1)]:
        require sub_37373e09[address(arg1)] - 1 < routers.length
        routers[stor6[address(arg1)] - 1].field_0 = uint8(arg3)
        routers[stor6[address(arg1)] - 1].field_256 = arg2
        routers[stor6[address(arg1)] - 1].field_512 = arg4
        routers[stor6[address(arg1)] - 1].field_768 = arg5
    else:
        sub_37373e09[address(arg1)] = routers.length + 1
        routers.length++
        routers[routers.length].field_0 = uint8(arg3)
        storF3F7[stor8.length] = arg2
        storF3F7[stor8.length] = arg4
        storF3F7[stor8.length] = arg5
}

function sub_648b7d56(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_e3c7883b[address(arg1)]:
        require sub_e3c7883b[address(arg1)] - 1 < oracles.length
        oracles[stor5[address(arg1)]].field_0 = uint8(arg6)
        oracles[stor5[address(arg1)]].field_0 = arg1
        oracles[stor5[address(arg1)]].field_0 = arg3
        oracles[stor5[address(arg1)]].field_0 = arg4
        oracles[stor5[address(arg1)]].field_0 = arg2
        oracles[stor5[address(arg1)]].field_0 = arg5
    else:
        sub_e3c7883b[address(arg1)] = oracles.length + 1
        oracles.length++
        oracles[oracles.length].field_0 = uint8(arg6)
        storA66C[stor7.length] = arg2
        storA66C[stor7.length] = arg1
        storA66C[stor7.length] = arg3
        storA66C[stor7.length] = arg4
        storA66C[stor7.length] = arg5
        storA66C[stor7.length] = 0
}

function sub_ec727e7a(?) payable {
    require calldata.size - 4 >= 128
    if not arg2:
        if not arg3:
            if not eth.balance(arg1):
                return 0
            if not arg4:
                if not eth.balance(arg1):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / eth.balance(arg1))
            if eth.balance(arg1) * arg4 / arg4 != eth.balance(arg1):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not eth.balance(arg1):
                revert with 0, 'SafeMath: division by zero'
            return (eth.balance(arg1) * arg4 / eth.balance(arg1))
        require ext_code.size(arg3)
        staticcall arg3.balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not eth.balance(arg1):
            return 0
        if not arg4:
            if not eth.balance(arg1):
                revert with 0, 'SafeMath: division by zero'
            return (0 / eth.balance(arg1))
        if ext_call.return_data[0] * arg4 / arg4 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not eth.balance(arg1):
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] * arg4 / eth.balance(arg1))
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        if not ext_call.return_data[0]:
            return 0
        if not arg4:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0])
        if eth.balance(arg1) * arg4 / arg4 != eth.balance(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (eth.balance(arg1) * arg4 / ext_call.return_data[0])
    require ext_code.size(arg3)
    staticcall arg3.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not arg4:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * arg4 / arg4 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * arg4 / ext_call.return_data[0])
}

function update() payable {
    mem[64] = 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if updateTime + interval > block.timestamp:
        revert with 0, 'update too fast'
    idx = 0
    while idx < oracles.length:
        mem[0] = 7
        if not oracles[idx].field_0:
            idx = idx + 1
            continue 
        if oracles[idx].field_256:
            idx = idx + 1
            continue 
        if not oracles[idx].field_768:
            if not oracles[idx].field_1024:
                if not eth.balance(oracles[idx].field_512):
                    oracles[idx].field_1536 = 0
                    idx = idx + 1
                    continue 
                if not 10^oracles[idx].field_1280:
                    _105 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_105] = 26
                    mem[_105 + 32] = 'SafeMath: division by zero'
                    if eth.balance(oracles[idx].field_512):
                        oracles[idx].field_1536 = 0 / eth.balance(oracles[idx].field_512)
                        idx = idx + 1
                        continue 
                    _111 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _111 + 68] = mem[idx + _105 + 32]
                        idx = idx + 32
                        continue 
                    mem[_111 + 68] = mem[_111 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _111 + -mem[64] + 100
                if eth.balance(oracles[idx].field_512) * 10^oracles[idx].field_1280 / 10^oracles[idx].field_1280 != eth.balance(oracles[idx].field_512):
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = 26
                mem[_106 + 32] = 'SafeMath: division by zero'
                if eth.balance(oracles[idx].field_512):
                    oracles[idx].field_1536 = eth.balance(oracles[idx].field_512) * 10^oracles[idx].field_1280 / eth.balance(oracles[idx].field_512)
                    idx = idx + 1
                    continue 
                _116 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _116 + 68] = mem[idx + _106 + 32]
                    idx = idx + 32
                    continue 
                mem[_116 + 68] = mem[_116 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _116 + -mem[64] + 100
            mem[mem[64] + 4] = oracles[idx].field_512
            require ext_code.size(oracles[idx].field_1024)
            staticcall oracles[idx].field_1024.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args oracles[idx].field_512
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not eth.balance(oracles[idx].field_512):
                oracles[idx].field_1536 = 0
                idx = idx + 1
                continue 
            if not 10^oracles[idx].field_1280:
                _115 = mem[64]
                mem[64] = mem[64] + 64
                mem[_115] = 26
                mem[_115 + 32] = 'SafeMath: division by zero'
                if eth.balance(oracles[idx].field_512):
                    oracles[idx].field_1536 = 0 / eth.balance(oracles[idx].field_512)
                    idx = idx + 1
                    continue 
                _127 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _127 + 68] = mem[idx + _115 + 32]
                    idx = idx + 32
                    continue 
                mem[_127 + 68] = mem[_127 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _127 + -mem[64] + 100
            if ext_call.return_data[0] * 10^oracles[idx].field_1280 / 10^oracles[idx].field_1280 != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _120 = mem[64]
            mem[64] = mem[64] + 64
            mem[_120] = 26
            mem[_120 + 32] = 'SafeMath: division by zero'
            if eth.balance(oracles[idx].field_512):
                oracles[idx].field_1536 = ext_call.return_data[0] * 10^oracles[idx].field_1280 / eth.balance(oracles[idx].field_512)
                idx = idx + 1
                continue 
            _137 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _137 + 68] = mem[idx + _120 + 32]
                idx = idx + 32
                continue 
            mem[_137 + 68] = mem[_137 + 74 len 26]
            revert with memory
              from mem[64]
               len _137 + -mem[64] + 100
        mem[mem[64] + 4] = oracles[idx].field_512
        require ext_code.size(oracles[idx].field_768)
        staticcall oracles[idx].field_768.balanceOf(address arg1) with:
                gas gas_remaining wei
               args oracles[idx].field_512
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not oracles[idx].field_1024:
            if not ext_call.return_data[0]:
                oracles[idx].field_1536 = 0
                idx = idx + 1
                continue 
            if not 10^oracles[idx].field_1280:
                _114 = mem[64]
                mem[64] = mem[64] + 64
                mem[_114] = 26
                mem[_114 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    oracles[idx].field_1536 = 0 / ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                _124 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _124 + 68] = mem[idx + _114 + 32]
                    idx = idx + 32
                    continue 
                mem[_124 + 68] = mem[_124 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _124 + -mem[64] + 100
            if eth.balance(oracles[idx].field_512) * 10^oracles[idx].field_1280 / 10^oracles[idx].field_1280 != eth.balance(oracles[idx].field_512):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _119 = mem[64]
            mem[64] = mem[64] + 64
            mem[_119] = 26
            mem[_119 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                oracles[idx].field_1536 = eth.balance(oracles[idx].field_512) * 10^oracles[idx].field_1280 / ext_call.return_data[0]
                idx = idx + 1
                continue 
            _134 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _134 + 68] = mem[idx + _119 + 32]
                idx = idx + 32
                continue 
            mem[_134 + 68] = mem[_134 + 74 len 26]
            revert with memory
              from mem[64]
               len _134 + -mem[64] + 100
        mem[mem[64] + 4] = oracles[idx].field_512
        require ext_code.size(oracles[idx].field_1024)
        staticcall oracles[idx].field_1024.balanceOf(address arg1) with:
                gas gas_remaining wei
               args oracles[idx].field_512
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            oracles[idx].field_1536 = 0
            idx = idx + 1
            continue 
        if not 10^oracles[idx].field_1280:
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                oracles[idx].field_1536 = 0 / ext_call.return_data[0]
                idx = idx + 1
                continue 
            _147 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _147 + 68] = mem[idx + _133 + 32]
                idx = idx + 32
                continue 
            mem[_147 + 68] = mem[_147 + 74 len 26]
            revert with memory
              from mem[64]
               len _147 + -mem[64] + 100
        if ext_call.return_data[0] * 10^oracles[idx].field_1280 / 10^oracles[idx].field_1280 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _143 = mem[64]
        mem[64] = mem[64] + 64
        mem[_143] = 26
        mem[_143 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            oracles[idx].field_1536 = ext_call.return_data[0] * 10^oracles[idx].field_1280 / ext_call.return_data[0]
            idx = idx + 1
            continue 
        _156 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _156 + 68] = mem[idx + _143 + 32]
            idx = idx + 32
            continue 
        mem[_156 + 68] = mem[_156 + 74 len 26]
        revert with memory
          from mem[64]
           len _156 + -mem[64] + 100
    updateTime = block.timestamp
}

function getUnderlyingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    if baseTokenAddress == arg1:
        if sub_dd7bf52f:
            return 10^(-sub_10621da4 + 36)
        else:
            return 0
    if not sub_37373e09[address(arg1)]:
        return 0
    require sub_37373e09[address(arg1)] - 1 < routers.length
    if not routers[stor6[address(arg1)] - 1].field_0:
        return 0
    if not sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_512]:
        return 0
    require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_512] - 1 < oracles.length
    if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
        return 0
    require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_512] - 1 < oracles.length
    if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
        if not routers[stor6[address(arg1)] - 1].field_768:
            return 0
        if not sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768]:
            return 0
        require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768] - 1 < oracles.length
        if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            return 0
        require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768] - 1 < oracles.length
        if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            return 0
        if oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 > 0:
            if oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                if 0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
        else:
            if oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                if 0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
        if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
    if oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 > 0:
        if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
            if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
                revert with 0, 'SafeMath: division by zero'
            if not routers[stor6[address(arg1)] - 1].field_768:
                return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0)
            if not sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768]:
                return 0
            require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768] - 1 < oracles.length
            if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                return 0
            require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768] - 1 < oracles.length
            if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                return 0
            if oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 > 0:
                if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                    if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
                if 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 != 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
            if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
            if 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 != 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
            if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
        if 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 != 10^routers[stor6[address(arg1)] - 1].field_256:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
        if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
            revert with 0, 'SafeMath: division by zero'
        if not routers[stor6[address(arg1)] - 1].field_768:
            return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0)
        if not sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768]:
            return 0
        require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768] - 1 < oracles.length
        if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            return 0
        require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768] - 1 < oracles.length
        if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            return 0
        if oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 > 0:
            if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
            if 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 != 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
            if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
        if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
        if 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 != 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
        if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
    if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
        if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
            revert with 0, 'SafeMath: division by zero'
        if not routers[stor6[address(arg1)] - 1].field_768:
            return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0)
        if not sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768]:
            return 0
        require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768] - 1 < oracles.length
        if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            return 0
        require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768] - 1 < oracles.length
        if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            return 0
        if oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 > 0:
            if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
            if 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 != 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
            if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
        if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
        if 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 != 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
        if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
    if 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 != 10^routers[stor6[address(arg1)] - 1].field_256:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
    if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
        revert with 0, 'SafeMath: division by zero'
    if not routers[stor6[address(arg1)] - 1].field_768:
        return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0)
    if not sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768]:
        return 0
    require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768] - 1 < oracles.length
    if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
        return 0
    require sub_e3c7883b[stor8[stor6[address(arg1)] - 1].field_768] - 1 < oracles.length
    if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
        return 0
    if oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 > 0:
        if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
        if 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 != 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
        if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
    if not oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
        if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
    if 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 != 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
    if not 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0:
        revert with 0, 'SafeMath: division by zero'
    return (10^(-sub_10621da4 + -routers[stor6[address(arg1)] - 1].field_256 + 36) * 10^routers[stor6[address(arg1)] - 1].field_256 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_512]].field_0 * oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0 / 10^oracles[stor5[stor8[stor6[address(arg1)] - 1].field_768]].field_0)
}



}
