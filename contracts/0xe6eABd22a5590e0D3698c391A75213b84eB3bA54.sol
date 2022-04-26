contract main {




// =====================  Runtime code  =====================


const balanceOf = eth.balance(this.address)


address _gubAddyAddress;
uint256 contractBalance;
array of uint256 wagerRecId;
uint256 numberOfWagers;
uint256 stor4;
mapping of struct sub_b41168ba;
array of struct sub_3bf112c0;
array of struct sub_28e1258d;
mapping of uint256 choicesAmount;

function sub_28e1258d(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_28e1258d[arg1].field_0
    return sub_28e1258d[arg1][arg2].field_0, 
           sub_28e1258d[arg1][arg2].field_256,
           sub_28e1258d[arg1][arg2].field_512,
           sub_28e1258d[arg1][arg2].field_768,
           address(sub_28e1258d[arg1][arg2].field_1024)
}

function choicesAmount(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return choicesAmount[arg1][arg2]
}

function sub_3bf112c0(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_3bf112c0[arg1].field_0
    return sub_3bf112c0[arg1][arg2].field_0, 
           sub_3bf112c0[arg1][arg2].field_256,
           sub_3bf112c0[arg1][arg2].field_512,
           address(sub_3bf112c0[arg1][arg2].field_768)
}

function _gubAddy() {
    return _gubAddyAddress
}

function wagerRecId(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < wagerRecId.length
    return wagerRecId[arg1]
}

function contractBalance() {
    return contractBalance
}

function sub_b41168ba(?) {
    require calldata.size - 4 >= 32
    return sub_b41168ba[arg1].field_0, 
           sub_b41168ba[arg1].field_256,
           sub_b41168ba[arg1].field_512,
           sub_b41168ba[arg1].field_768,
           bool(uint8(sub_b41168ba[arg1].field_1024))
}

function numberOfWagers() {
    return numberOfWagers
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _gubAddyAddress != msg.sender:
        revert with 0, 'Sender not Authorized'
    require arg1
    _gubAddyAddress = arg1
}

function sub_21565052(?) payable {
    require calldata.size - 4 >= 96
    if msg.sender == _gubAddyAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Funds cannot be sent from originating wallet'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must submit a valid GU Playerid'
    require msg.value > 0
    if not uint8(sub_b41168ba[arg1].field_1024):
        if numberOfWagers == -1:
            revert with 0, 17
        numberOfWagers++
        wagerRecId.length++
        wagerRecId[wagerRecId.length] = arg1
    if 1 > !sub_3bf112c0[arg1].field_0:
        revert with 0, 17
    if sub_b41168ba[arg1].field_768 > !msg.value:
        revert with 0, 17
    sub_b41168ba[arg1].field_256 = sub_3bf112c0[arg1].field_0 + 1
    sub_b41168ba[arg1].field_768 += msg.value
    uint8(sub_b41168ba[arg1].field_1024) = 1
    sub_3bf112c0[arg1].field_0++
    sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0].field_0 = arg2
    sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0].field_256 = msg.value
    sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0].field_512 = arg3
    address(sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0].field_768) = msg.sender
    if choicesAmount[arg1][arg3] > !msg.value:
        revert with 0, 17
    choicesAmount[arg1][arg3] += msg.value
    choicesAmount[arg1][arg3] += msg.value
    contractBalance = eth.balance(this.address)
    emit 0xf4394e84: msg.value, arg3, 1, arg1, arg2
}

function sub_5614dc00(?) payable {
    require calldata.size - 4 >= 32
    if _gubAddyAddress != msg.sender:
        revert with 0, 'Sender not Authorized'
    if var20001 < 1:
        revert with 0, 17
    if var24002 > var24001:
        if var30001 < 1:
            revert with 0, 17
        if var34002 > var34001:
            if 1 < wagerRecId.length:
                if wagerRecId.length < 1:
                    revert with 0, 17
                if var50002 <= wagerRecId.length - 1:
                    if var52001 >= wagerRecId.length:
                        revert with 0, 50
                    if arg1 != wagerRecId[var54001]:
                        if var58001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        if var56001 >= wagerRecId.length:
                            revert with 0, 50
                        wagerRecId[var58001] = 0
                        if wagerRecId.length < 1:
                            revert with 0, 17
                        if wagerRecId.length - 1 >= wagerRecId.length:
                            revert with 0, 50
                        if var64003 >= wagerRecId.length:
                            revert with 0, 50
                        wagerRecId[var64003] = wagerRecId[wagerRecId.length]
                        if not wagerRecId.length:
                            revert with 0, 49
                        wagerRecId[wagerRecId.length] = 0
                        wagerRecId.length--
                        # nil
                else:
                    if not numberOfWagers:
                        revert with 0, 17
                    numberOfWagers--
                    sub_b41168ba[arg1].field_0 = 0
                    sub_b41168ba[arg1].field_256 = 0
                    sub_b41168ba[arg1].field_512 = 0
                    sub_b41168ba[arg1].field_768 = 0
                    uint8(sub_b41168ba[arg1].field_1024) = 0
                    sub_3bf112c0[arg1].field_0 = 0
                    idx = 0
                    while 4 * sub_3bf112c0[arg1].field_0 > idx:
                        sub_3bf112c0[arg1][idx].field_0 = 0
                        sub_3bf112c0[arg1][idx].field_256 = 0
                        sub_3bf112c0[arg1][idx].field_512 = 0
                        address(sub_3bf112c0[arg1][idx].field_768) = 0
                        idx = idx + 4
                        continue 
                    sub_28e1258d[arg1].field_0 = 0
                    idx = 0
                    while 5 * sub_28e1258d[arg1].field_0 > idx:
                        sub_28e1258d[arg1][idx].field_0 = 0
                        sub_28e1258d[arg1][idx].field_256 = 0
                        sub_28e1258d[arg1][idx].field_512 = 0
                        sub_28e1258d[arg1][idx].field_768 = 0
                        address(sub_28e1258d[arg1][idx].field_1024) = 0
                        idx = idx + 5
                        continue 
                    contractBalance = eth.balance(this.address)
            else:
                if 0 >= wagerRecId.length:
                    revert with 0, 50
                if arg1 == wagerRecId:
                    if 0 >= wagerRecId.length:
                        revert with 0, 50
                    wagerRecId = 0
                    if not wagerRecId.length:
                        revert with 0, 49
                    wagerRecId[wagerRecId.length] = 0
                    wagerRecId.length--
                if not numberOfWagers:
                    revert with 0, 17
                numberOfWagers--
                sub_b41168ba[arg1].field_0 = 0
                sub_b41168ba[arg1].field_256 = 0
                sub_b41168ba[arg1].field_512 = 0
                sub_b41168ba[arg1].field_768 = 0
                uint8(sub_b41168ba[arg1].field_1024) = 0
                sub_3bf112c0[arg1].field_0 = 0
                idx = 0
                while 4 * sub_3bf112c0[arg1].field_0 > idx:
                    sub_3bf112c0[arg1][idx].field_0 = 0
                    sub_3bf112c0[arg1][idx].field_256 = 0
                    sub_3bf112c0[arg1][idx].field_512 = 0
                    address(sub_3bf112c0[arg1][idx].field_768) = 0
                    idx = idx + 4
                    continue 
                sub_28e1258d[arg1].field_0 = 0
                idx = 0
                while 5 * sub_28e1258d[arg1].field_0 > idx:
                    sub_28e1258d[arg1][idx].field_0 = 0
                    sub_28e1258d[arg1][idx].field_256 = 0
                    sub_28e1258d[arg1][idx].field_512 = 0
                    sub_28e1258d[arg1][idx].field_768 = 0
                    address(sub_28e1258d[arg1][idx].field_1024) = 0
                    idx = idx + 5
                    continue 
                contractBalance = eth.balance(this.address)
        else:
            if var36001 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if stor[var38004][stor[(4 * var38001) + sha3(var38002) + 2]] > 0:
                if var40001 >= sub_3bf112c0[arg1].field_0:
                    revert with 0, 50
                stor[var42004][stor[(4 * var42001) + sha3(var42002) + 2]] = 0
                if var46001 == -1:
                    revert with 0, 17
                if var54001 < 1:
                    revert with 0, 17
                # nil
            else:
                if var42001 == -1:
                    revert with 0, 17
                if var50001 < 1:
                    revert with 0, 17
                if var54002 <= var54001:
                    if var56001 >= sub_3bf112c0[arg1].field_0:
                        revert with 0, 50
                    # nil
                else:
                    if 1 < wagerRecId.length:
                        # nil
                    else:
                        if 0 >= wagerRecId.length:
                            revert with 0, 50
                        if arg1 != wagerRecId:
                            if not numberOfWagers:
                                revert with 0, 17
                            numberOfWagers--
                            sub_b41168ba[arg1].field_0 = 0
                            sub_b41168ba[arg1].field_256 = 0
                            sub_b41168ba[arg1].field_512 = 0
                            sub_b41168ba[arg1].field_768 = 0
                            uint8(sub_b41168ba[arg1].field_1024) = 0
                            sub_3bf112c0[arg1].field_0 = 0
                            idx = 0
                            while 4 * sub_3bf112c0[arg1].field_0 > idx:
                                sub_3bf112c0[arg1][idx].field_0 = 0
                                sub_3bf112c0[arg1][idx].field_256 = 0
                                sub_3bf112c0[arg1][idx].field_512 = 0
                                address(sub_3bf112c0[arg1][idx].field_768) = 0
                                idx = idx + 4
                                continue 
                            sub_28e1258d[arg1].field_0 = 0
                            # nil
                        else:
                            if 0 >= wagerRecId.length:
                                revert with 0, 50
                            wagerRecId = 0
                            if not wagerRecId.length:
                                revert with 0, 49
                            wagerRecId[wagerRecId.length] = 0
                            wagerRecId.length--
                            if not numberOfWagers:
                                revert with 0, 17
                            numberOfWagers--
                            sub_b41168ba[arg1].field_0 = 0
                            sub_b41168ba[arg1].field_256 = 0
                            sub_b41168ba[arg1].field_512 = 0
                            sub_b41168ba[arg1].field_768 = 0
                            uint8(sub_b41168ba[arg1].field_1024) = 0
                            sub_3bf112c0[arg1].field_0 = 0
                            idx = 0
                            while 4 * sub_3bf112c0[arg1].field_0 > idx:
                                sub_3bf112c0[arg1][idx].field_0 = 0
                                sub_3bf112c0[arg1][idx].field_256 = 0
                                sub_3bf112c0[arg1][idx].field_512 = 0
                                address(sub_3bf112c0[arg1][idx].field_768) = 0
                                idx = idx + 4
                                continue 
                            sub_28e1258d[arg1].field_0 = 0
                            # nil
    else:
        if var26001 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        if var28003 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        call var30004 with:
           value stor[(4 * var30001) + sha3(var30002) + 1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if var34001 == -1:
            revert with 0, 17
        if var42001 < 1:
            revert with 0, 17
        if var46002 <= var46001:
            if var48001 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if var50003 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            call var52004 with:
               value stor[(4 * var52001) + sha3(var52002) + 1] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
        else:
            if var52001 < 1:
                revert with 0, 17
            if var56002 <= var56001:
                # nil
            else:
                if 1 < wagerRecId.length:
                    # nil
                else:
                    if 0 >= wagerRecId.length:
                        revert with 0, 50
                    if arg1 != wagerRecId:
                        if not numberOfWagers:
                            revert with 0, 17
                        numberOfWagers--
                        sub_b41168ba[arg1].field_0 = 0
                        sub_b41168ba[arg1].field_256 = 0
                        sub_b41168ba[arg1].field_512 = 0
                        sub_b41168ba[arg1].field_768 = 0
                        uint8(sub_b41168ba[arg1].field_1024) = 0
                        sub_3bf112c0[arg1].field_0 = 0
                        # nil
                    else:
                        if 0 >= wagerRecId.length:
                            revert with 0, 50
                        wagerRecId = 0
                        if not wagerRecId.length:
                            revert with 0, 49
                        wagerRecId[wagerRecId.length] = 0
                        wagerRecId.length--
                        if not numberOfWagers:
                            revert with 0, 17
                        numberOfWagers--
                        sub_b41168ba[arg1].field_0 = 0
                        sub_b41168ba[arg1].field_256 = 0
                        sub_b41168ba[arg1].field_512 = 0
                        sub_b41168ba[arg1].field_768 = 0
                        uint8(sub_b41168ba[arg1].field_1024) = 0
                        sub_3bf112c0[arg1].field_0 = 0
                        # nil
}

function sub_aff6ce18(?) payable {
    require calldata.size - 4 >= 64
    if _gubAddyAddress != msg.sender:
        revert with 0, 'Sender not Authorized'
    if 1 >= sub_3bf112c0[arg1].field_0:
        if not sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        if sub_3bf112c0[arg1].field_0 == arg2:
            if not sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if sub_b41168ba[arg1].field_768 < sub_3bf112c0[arg1].field_256:
                revert with 0, 17
            sub_b41168ba[arg1].field_768 -= sub_3bf112c0[arg1].field_256
            if not sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if not sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if choicesAmount[arg1][stor6[arg1].field_512] < sub_3bf112c0[arg1].field_256:
                revert with 0, 17
            if not sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            choicesAmount[arg1][stor6[arg1].field_512] -= sub_3bf112c0[arg1].field_256
            if 0 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if sub_3bf112c0[arg1].field_256 and 7 > -1 / sub_3bf112c0[arg1].field_256:
                revert with 0, 17
            call _gubAddyAddress with:
               value 7 * sub_3bf112c0[arg1].field_256 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if sub_3bf112c0[arg1].field_256 < 7 * sub_3bf112c0[arg1].field_256 / 100:
                revert with 0, 17
            if not sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            sub_3bf112c0[arg1].field_256 -= 7 * sub_3bf112c0[arg1].field_256 / 100
            if 0 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if not sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            call address(sub_3bf112c0[arg1].field_768) with:
               value sub_3bf112c0[arg1].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            sub_3bf112c0[arg1].field_0 = 0
            sub_3bf112c0[arg1].field_256 = 0
            sub_3bf112c0[arg1].field_512 = 0
            address(sub_3bf112c0[arg1].field_768) = 0
            if not sub_3bf112c0[arg1].field_0:
                revert with 0, 49
            sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_0 = 0
            sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_256 = 0
            sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_512 = 0
            address(sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_768) = 0
            sub_3bf112c0[arg1].field_0--
        contractBalance = eth.balance(this.address)
    if var64001 < 1:
        revert with 0, 17
    if var68002 > var68001:
        contractBalance = eth.balance(this.address)
    if var70001 >= sub_3bf112c0[arg1].field_0:
        revert with 0, 50
    if stor[(4 * var72001) + sha3(var72002)] == arg2:
        if var74001 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        idx = var74001
        s = 0
        s = var74001
        t = var74004
        while sub_b41168ba[arg1].field_768 >= sub_3bf112c0[arg1][idx].field_256:
            sub_b41168ba[arg1].field_768 -= sub_3bf112c0[arg1][idx].field_256
            if s >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if s >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if choicesAmount[arg1][stor6[arg1][s].field_512] < sub_3bf112c0[arg1][s].field_256:
                revert with 0, 17
            if s >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            choicesAmount[arg1][stor6[arg1][s].field_512] -= sub_3bf112c0[arg1][s].field_256
            if s >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if sub_3bf112c0[arg1][s].field_256 and 7 > -1 / sub_3bf112c0[arg1][s].field_256:
                revert with 0, 17
            call _gubAddyAddress with:
               value 7 * sub_3bf112c0[arg1][s].field_256 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if sub_3bf112c0[arg1][s].field_256 < 7 * sub_3bf112c0[arg1][s].field_256 / 100:
                revert with 0, 17
            if s >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            sub_3bf112c0[arg1][s].field_256 -= 7 * sub_3bf112c0[arg1][s].field_256 / 100
            if s >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if s >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            call address(sub_3bf112c0[arg1][s].field_768) with:
               value sub_3bf112c0[arg1][s].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            sub_3bf112c0[arg1][s].field_0 = 0
            sub_3bf112c0[arg1][s].field_256 = 0
            sub_3bf112c0[arg1][s].field_512 = 0
            address(sub_3bf112c0[arg1][s].field_768) = 0
            if sub_3bf112c0[arg1].field_0 < 1:
                revert with 0, 17
            if sub_3bf112c0[arg1].field_0 - 1 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if s >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            sub_3bf112c0[arg1][s].field_0 = sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_0
            sub_3bf112c0[arg1][s].field_256 = sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_256
            sub_3bf112c0[arg1][s].field_512 = sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_512
            address(sub_3bf112c0[arg1][s].field_768) = address(sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_768)
            if not sub_3bf112c0[arg1].field_0:
                revert with 0, 49
            sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_0 = 0
            sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_256 = 0
            sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_512 = 0
            address(sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_768) = 0
            sub_3bf112c0[arg1].field_0--
            if var78001 == -1:
                revert with 0, 17
            if var86001 < 1:
                revert with 0, 17
            if var90002 > var90001:
                contractBalance = eth.balance(this.address)
            if var92001 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if stor[(4 * var94001) + sha3(var94002)] != arg2:
                # nil
            else:
                if var94004 >= sub_3bf112c0[arg1].field_0:
                    revert with 0, 50
                mem[0] = arg1
                mem[32] = 5
                idx = var94004
                s = sha3(arg1, 6)
                s = var94004
                t = 7 * sub_3bf112c0[arg1][s].field_256 / 100
                continue 
        revert with 0, 17
    if var76001 == -1:
        revert with 0, 17
    if var84001 < 1:
        revert with 0, 17
    if var88002 > var88001:
        contractBalance = eth.balance(this.address)
    if var90001 >= sub_3bf112c0[arg1].field_0:
        revert with 0, 50
    if stor[(4 * var92001) + sha3(var92002)] != arg2:
        if var96001 == -1:
            revert with 0, 17
        # nil
    else:
        if var94001 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        if sub_b41168ba[arg1].field_768 < stor[(4 * var96001) + sha3(var96002) + 1]:
            revert with 0, 17
        sub_b41168ba[arg1].field_768 -= stor[(4 * var96001) + sha3(var96002) + 1]
        if var96004 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        if var96004 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        if choicesAmount[arg1][stor6[arg1][var96004].field_512] < sub_3bf112c0[arg1][var96004].field_256:
            revert with 0, 17
        if var96004 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        choicesAmount[arg1][stor6[arg1][var96004].field_512] -= sub_3bf112c0[arg1][var96004].field_256
        if var96004 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        if sub_3bf112c0[arg1][var96004].field_256 and 7 > -1 / sub_3bf112c0[arg1][var96004].field_256:
            revert with 0, 17
        call _gubAddyAddress with:
           value 7 * sub_3bf112c0[arg1][var96004].field_256 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if var96004 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        if sub_3bf112c0[arg1][var96004].field_256 < 7 * sub_3bf112c0[arg1][var96004].field_256 / 100:
            revert with 0, 17
        if var96004 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        sub_3bf112c0[arg1][var96004].field_256 -= 7 * sub_3bf112c0[arg1][var96004].field_256 / 100
        if var96004 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        if var96004 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        call address(sub_3bf112c0[arg1][var96004].field_768) with:
           value sub_3bf112c0[arg1][var96004].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if var96004 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        sub_3bf112c0[arg1][var96004].field_0 = 0
        sub_3bf112c0[arg1][var96004].field_256 = 0
        sub_3bf112c0[arg1][var96004].field_512 = 0
        address(sub_3bf112c0[arg1][var96004].field_768) = 0
        if sub_3bf112c0[arg1].field_0 < 1:
            revert with 0, 17
        if sub_3bf112c0[arg1].field_0 - 1 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        if var96004 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        sub_3bf112c0[arg1][var96004].field_0 = sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_0
        sub_3bf112c0[arg1][var96004].field_256 = sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_256
        sub_3bf112c0[arg1][var96004].field_512 = sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_512
        address(sub_3bf112c0[arg1][var96004].field_768) = address(sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_768)
        if not sub_3bf112c0[arg1].field_0:
            revert with 0, 49
        sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_0 = 0
        sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_256 = 0
        sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_512 = 0
        address(sub_3bf112c0[arg1][sub_3bf112c0[arg1].field_0 - 1].field_768) = 0
        sub_3bf112c0[arg1].field_0--
        # nil
}

function sub_870325ad(?) payable {
    require calldata.size - 4 >= 64
    if _gubAddyAddress != msg.sender:
        revert with 0, 'Sender not Authorized'
    if sub_b41168ba[arg1].field_768 > 0x2492492492492492492492492492492492492492492492492492492492492492:
        revert with 0, 17
    sub_b41168ba[arg1].field_0 = 7 * sub_b41168ba[arg1].field_768 / 100
    if sub_b41168ba[arg1].field_768 < 7 * sub_b41168ba[arg1].field_768 / 100:
        revert with 0, 17
    sub_b41168ba[arg1].field_768 -= 7 * sub_b41168ba[arg1].field_768 / 100
    if var57001 < 1:
        revert with 0, 17
    if var61002 <= var61001:
        if var63001 >= sub_3bf112c0[arg1].field_0:
            revert with 0, 50
        if stor[(4 * var65001) + sha3(var65002) + 2] != arg2:
            if var69001 == -1:
                revert with 0, 17
            if var77001 < 1:
                revert with 0, 17
            if var81002 <= var81001:
                if var83001 >= sub_3bf112c0[arg1].field_0:
                    revert with 0, 50
                if stor[(4 * var85001) + sha3(var85002) + 2] != arg2:
                    if var89001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if var87001 >= sub_3bf112c0[arg1].field_0:
                        revert with 0, 50
                    if var89007 >= sub_3bf112c0[arg1].field_0:
                        revert with 0, 50
                    # nil
            else:
                sub_b41168ba[arg1].field_512 = sub_28e1258d[arg1].field_0
                if sub_28e1258d[arg1].field_0:
                    call _gubAddyAddress with:
                       value sub_b41168ba[arg1].field_0 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if var66001 < 1:
                        revert with 0, 17
                    if var70002 <= var70001:
                        if var72001 >= sub_28e1258d[arg1].field_0:
                            revert with 0, 50
                        # nil
                    else:
                        if sub_b41168ba[arg1].field_768 < var70003:
                            revert with 0, 17
                        sub_b41168ba[arg1].field_768 -= var70003
                        if not sub_b41168ba[arg1].field_768 - var70003:
                            # nil
                        else:
                            call _gubAddyAddress with:
                               value sub_b41168ba[arg1].field_768 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                else:
                    if var76001 < 1:
                        revert with 0, 17
                    if var80002 <= var80001:
                        if var82001 >= sub_3bf112c0[arg1].field_0:
                            revert with 0, 50
                        # nil
                    else:
                        contractBalance = eth.balance(this.address)
                        sub_b41168ba[arg1].field_0 = 0
                        sub_b41168ba[arg1].field_256 = 0
                        sub_b41168ba[arg1].field_512 = 0
                        sub_b41168ba[arg1].field_768 = 0
                        uint8(sub_b41168ba[arg1].field_1024) = 0
                        sub_3bf112c0[arg1].field_0 = 0
                        idx = 0
                        while 4 * sub_3bf112c0[arg1].field_0 > idx:
                            sub_3bf112c0[arg1][idx].field_0 = 0
                            sub_3bf112c0[arg1][idx].field_256 = 0
                            sub_3bf112c0[arg1][idx].field_512 = 0
                            address(sub_3bf112c0[arg1][idx].field_768) = 0
                            idx = idx + 4
                            continue 
                        sub_28e1258d[arg1].field_0 = 0
                        # nil
        else:
            if var67001 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if var69007 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if var75001 and stor4 > -1 / var75001:
                revert with 0, 17
            if not var81002:
                revert with 0, 18
            if sub_b41168ba[arg1].field_768 and var81001 / var81002 > -1 / sub_b41168ba[arg1].field_768:
                revert with 0, 17
            if not stor4:
                revert with 0, 18
            if var81005 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if var81005 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if var81005 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            if var81005 >= sub_3bf112c0[arg1].field_0:
                revert with 0, 50
            sub_28e1258d[arg1].field_0++
            sub_28e1258d[arg1][sub_28e1258d[arg1].field_0].field_0 = sub_3bf112c0[arg1][var81005].field_0
            sub_28e1258d[arg1][sub_28e1258d[arg1].field_0].field_256 = sub_3bf112c0[arg1][var81005].field_256
            sub_28e1258d[arg1][sub_28e1258d[arg1].field_0].field_512 = sub_b41168ba[arg1].field_768 * var81001 / var81002 / stor4
            sub_28e1258d[arg1][sub_28e1258d[arg1].field_0].field_768 = sub_3bf112c0[arg1][var81005].field_512
            address(sub_28e1258d[arg1][sub_28e1258d[arg1].field_0].field_1024) = address(sub_3bf112c0[arg1][var81005].field_768)
            if var77001 == -1:
                revert with 0, 17
            # nil
    else:
        sub_b41168ba[arg1].field_512 = sub_28e1258d[arg1].field_0
        if not sub_28e1258d[arg1].field_0:
            if var56001 < 1:
                revert with 0, 17
            if var60002 <= var60001:
                if var62001 >= sub_3bf112c0[arg1].field_0:
                    revert with 0, 50
                if var66002 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                    revert with 0, 17
                if var76002 >= sub_3bf112c0[arg1].field_0:
                    revert with 0, 50
                if var82001 < var82002:
                    revert with 0, 17
                # nil
            else:
                contractBalance = eth.balance(this.address)
                sub_b41168ba[arg1].field_0 = 0
                sub_b41168ba[arg1].field_256 = 0
                sub_b41168ba[arg1].field_512 = 0
                sub_b41168ba[arg1].field_768 = 0
                uint8(sub_b41168ba[arg1].field_1024) = 0
                sub_3bf112c0[arg1].field_0 = 0
                idx = 0
                while 4 * sub_3bf112c0[arg1].field_0 > idx:
                    sub_3bf112c0[arg1][idx].field_0 = 0
                    sub_3bf112c0[arg1][idx].field_256 = 0
                    sub_3bf112c0[arg1][idx].field_512 = 0
                    address(sub_3bf112c0[arg1][idx].field_768) = 0
                    idx = idx + 4
                    continue 
                sub_28e1258d[arg1].field_0 = 0
                idx = 0
                while 5 * sub_28e1258d[arg1].field_0 > idx:
                    sub_28e1258d[arg1][idx].field_0 = 0
                    sub_28e1258d[arg1][idx].field_256 = 0
                    sub_28e1258d[arg1][idx].field_512 = 0
                    sub_28e1258d[arg1][idx].field_768 = 0
                    address(sub_28e1258d[arg1][idx].field_1024) = 0
                    idx = idx + 5
                    continue 
        else:
            call _gubAddyAddress with:
               value sub_b41168ba[arg1].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var46001 < 1:
                revert with 0, 17
            if var50002 <= var50001:
                if var52001 >= sub_28e1258d[arg1].field_0:
                    revert with 0, 50
                if var54003 >= sub_28e1258d[arg1].field_0:
                    revert with 0, 50
                call var56004 with:
                   value stor[(5 * var56001) + sha3(var56002) + 2] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var58002 >= sub_28e1258d[arg1].field_0:
                    revert with 0, 50
                if var62001 > !var62002:
                    revert with 0, 17
                if var68001 == -1:
                    revert with 0, 17
                # nil
            else:
                if sub_b41168ba[arg1].field_768 < var50003:
                    revert with 0, 17
                sub_b41168ba[arg1].field_768 -= var50003
                if not sub_b41168ba[arg1].field_768 - var50003:
                    if var58001 < 1:
                        revert with 0, 17
                    if var62002 <= var62001:
                        if var64001 >= sub_3bf112c0[arg1].field_0:
                            revert with 0, 50
                        if stor[var66004][stor[(4 * var66001) + sha3(var66002) + 2]] <= 0:
                            if var70001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var68001 >= sub_3bf112c0[arg1].field_0:
                                revert with 0, 50
                            stor[var70004][stor[(4 * var70001) + sha3(var70002) + 2]] = 0
                            if var74001 == -1:
                                revert with 0, 17
                            # nil
                    else:
                        if 1 < wagerRecId.length:
                            if wagerRecId.length < 1:
                                revert with 0, 17
                            if var78002 <= wagerRecId.length - 1:
                                if var80001 >= wagerRecId.length:
                                    revert with 0, 50
                                if arg1 != wagerRecId[var82001]:
                                    # nil
                                else:
                                    if var84001 >= wagerRecId.length:
                                        revert with 0, 50
                                    # nil
                            else:
                                if not numberOfWagers:
                                    revert with 0, 17
                                numberOfWagers--
                                contractBalance = eth.balance(this.address)
                                sub_b41168ba[arg1].field_0 = 0
                                sub_b41168ba[arg1].field_256 = 0
                                sub_b41168ba[arg1].field_512 = 0
                                sub_b41168ba[arg1].field_768 = 0
                                uint8(sub_b41168ba[arg1].field_1024) = 0
                                sub_3bf112c0[arg1].field_0 = 0
                                idx = 0
                                while 4 * sub_3bf112c0[arg1].field_0 > idx:
                                    sub_3bf112c0[arg1][idx].field_0 = 0
                                    sub_3bf112c0[arg1][idx].field_256 = 0
                                    sub_3bf112c0[arg1][idx].field_512 = 0
                                    address(sub_3bf112c0[arg1][idx].field_768) = 0
                                    idx = idx + 4
                                    continue 
                                sub_28e1258d[arg1].field_0 = 0
                                idx = 0
                                while 5 * sub_28e1258d[arg1].field_0 > idx:
                                    sub_28e1258d[arg1][idx].field_0 = 0
                                    sub_28e1258d[arg1][idx].field_256 = 0
                                    sub_28e1258d[arg1][idx].field_512 = 0
                                    sub_28e1258d[arg1][idx].field_768 = 0
                                    address(sub_28e1258d[arg1][idx].field_1024) = 0
                                    idx = idx + 5
                                    continue 
                        else:
                            if 0 >= wagerRecId.length:
                                revert with 0, 50
                            if arg1 == wagerRecId:
                                if 0 >= wagerRecId.length:
                                    revert with 0, 50
                                wagerRecId = 0
                                if not wagerRecId.length:
                                    revert with 0, 49
                                wagerRecId[wagerRecId.length] = 0
                                wagerRecId.length--
                            if not numberOfWagers:
                                revert with 0, 17
                            numberOfWagers--
                            contractBalance = eth.balance(this.address)
                            sub_b41168ba[arg1].field_0 = 0
                            sub_b41168ba[arg1].field_256 = 0
                            sub_b41168ba[arg1].field_512 = 0
                            sub_b41168ba[arg1].field_768 = 0
                            uint8(sub_b41168ba[arg1].field_1024) = 0
                            sub_3bf112c0[arg1].field_0 = 0
                            idx = 0
                            while 4 * sub_3bf112c0[arg1].field_0 > idx:
                                sub_3bf112c0[arg1][idx].field_0 = 0
                                sub_3bf112c0[arg1][idx].field_256 = 0
                                sub_3bf112c0[arg1][idx].field_512 = 0
                                address(sub_3bf112c0[arg1][idx].field_768) = 0
                                idx = idx + 4
                                continue 
                            sub_28e1258d[arg1].field_0 = 0
                            idx = 0
                            while 5 * sub_28e1258d[arg1].field_0 > idx:
                                sub_28e1258d[arg1][idx].field_0 = 0
                                sub_28e1258d[arg1][idx].field_256 = 0
                                sub_28e1258d[arg1][idx].field_512 = 0
                                sub_28e1258d[arg1][idx].field_768 = 0
                                address(sub_28e1258d[arg1][idx].field_1024) = 0
                                idx = idx + 5
                                continue 
                else:
                    call _gubAddyAddress with:
                       value sub_b41168ba[arg1].field_768 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if var60001 < 1:
                        revert with 0, 17
                    if var64002 <= var64001:
                        if var66001 >= sub_3bf112c0[arg1].field_0:
                            revert with 0, 50
                        if stor[var68004][stor[(4 * var68001) + sha3(var68002) + 2]] <= 0:
                            if var72001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var70001 >= sub_3bf112c0[arg1].field_0:
                                revert with 0, 50
                            stor[var72004][stor[(4 * var72001) + sha3(var72002) + 2]] = 0
                            if var76001 == -1:
                                revert with 0, 17
                            # nil
                    else:
                        if 1 < wagerRecId.length:
                            if wagerRecId.length < 1:
                                revert with 0, 17
                            if var80002 <= wagerRecId.length - 1:
                                if var82001 >= wagerRecId.length:
                                    revert with 0, 50
                                if arg1 != wagerRecId[var84001]:
                                    # nil
                                else:
                                    if var86001 >= wagerRecId.length:
                                        revert with 0, 50
                                    # nil
                            else:
                                if not numberOfWagers:
                                    revert with 0, 17
                                numberOfWagers--
                                contractBalance = eth.balance(this.address)
                                sub_b41168ba[arg1].field_0 = 0
                                sub_b41168ba[arg1].field_256 = 0
                                sub_b41168ba[arg1].field_512 = 0
                                sub_b41168ba[arg1].field_768 = 0
                                uint8(sub_b41168ba[arg1].field_1024) = 0
                                sub_3bf112c0[arg1].field_0 = 0
                                idx = 0
                                while 4 * sub_3bf112c0[arg1].field_0 > idx:
                                    sub_3bf112c0[arg1][idx].field_0 = 0
                                    sub_3bf112c0[arg1][idx].field_256 = 0
                                    sub_3bf112c0[arg1][idx].field_512 = 0
                                    address(sub_3bf112c0[arg1][idx].field_768) = 0
                                    idx = idx + 4
                                    continue 
                                sub_28e1258d[arg1].field_0 = 0
                                idx = 0
                                while 5 * sub_28e1258d[arg1].field_0 > idx:
                                    sub_28e1258d[arg1][idx].field_0 = 0
                                    sub_28e1258d[arg1][idx].field_256 = 0
                                    sub_28e1258d[arg1][idx].field_512 = 0
                                    sub_28e1258d[arg1][idx].field_768 = 0
                                    address(sub_28e1258d[arg1][idx].field_1024) = 0
                                    idx = idx + 5
                                    continue 
                        else:
                            if 0 >= wagerRecId.length:
                                revert with 0, 50
                            if arg1 == wagerRecId:
                                if 0 >= wagerRecId.length:
                                    revert with 0, 50
                                wagerRecId = 0
                                if not wagerRecId.length:
                                    revert with 0, 49
                                wagerRecId[wagerRecId.length] = 0
                                wagerRecId.length--
                            if not numberOfWagers:
                                revert with 0, 17
                            numberOfWagers--
                            contractBalance = eth.balance(this.address)
                            sub_b41168ba[arg1].field_0 = 0
                            sub_b41168ba[arg1].field_256 = 0
                            sub_b41168ba[arg1].field_512 = 0
                            sub_b41168ba[arg1].field_768 = 0
                            uint8(sub_b41168ba[arg1].field_1024) = 0
                            sub_3bf112c0[arg1].field_0 = 0
                            idx = 0
                            while 4 * sub_3bf112c0[arg1].field_0 > idx:
                                sub_3bf112c0[arg1][idx].field_0 = 0
                                sub_3bf112c0[arg1][idx].field_256 = 0
                                sub_3bf112c0[arg1][idx].field_512 = 0
                                address(sub_3bf112c0[arg1][idx].field_768) = 0
                                idx = idx + 4
                                continue 
                            sub_28e1258d[arg1].field_0 = 0
                            idx = 0
                            while 5 * sub_28e1258d[arg1].field_0 > idx:
                                sub_28e1258d[arg1][idx].field_0 = 0
                                sub_28e1258d[arg1][idx].field_256 = 0
                                sub_28e1258d[arg1][idx].field_512 = 0
                                sub_28e1258d[arg1][idx].field_768 = 0
                                address(sub_28e1258d[arg1][idx].field_1024) = 0
                                idx = idx + 5
                                continue 
}



}
