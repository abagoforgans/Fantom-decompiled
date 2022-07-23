contract main {




// =====================  Runtime code  =====================


uint256 decimals;
uint256 stor1;
uint256 stor2; offset 2
uint256 stor2; offset 1
uint256 emission;
uint256 currentEra;
uint256 currentDay;
uint256 daysPerEra;
uint256 secondsPerDay;
uint256 genesis;
uint256 nextEraTime;
uint256 nextDayTime;
address burnAddress;
address registryAddress;
uint256 totalFees;
uint256 totalBurnt;
mapping of uint256 sub_8454ed27;
mapping of uint256 sub_60b29259;
mapping of uint256 sub_dac679ec;
mapping of uint256 sub_d10d7f8c;
mapping of uint256 sub_a5a1ba21;
mapping of uint256 sub_77217a89;
array of uint256 sub_3db9a7ec;
mapping of uint8 stor21;
address sub_589b1936Address;
address sub_22e9cf06Address;
address sub_c3467af9Address;
address sub_ed76f196Address;
address sub_dcbeacd9Address;
address sub_04ccd183Address;
mapping of uint256 sub_6794550d;
mapping of uint256 sub_a2d6069b;
mapping of uint256 sub_9f39e641;
mapping of uint256 sub_c7c3fd6e;
mapping of struct sub_e41aa3d1;
mapping of struct sub_8fa02e64;

function sub_04ccd183(?) {
    return sub_04ccd183Address
}

function nextEraTime() {
    return nextEraTime
}

function totalFees() {
    return totalFees
}

function sub_22e9cf06(?) {
    return sub_22e9cf06Address
}

function decimals() {
    return decimals
}

function daysPerEra() {
    return daysPerEra
}

function sub_3db9a7ec(?) {
    require calldata.size - 4 >= 96
    require arg3 < sub_3db9a7ec[arg1][arg2]
    return sub_3db9a7ec[arg1][arg2][arg3]
}

function sub_4f8eddb2(?) {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function sub_589b1936(?) {
    return sub_589b1936Address
}

function currentDay() {
    return currentDay
}

function sub_60b29259(?) {
    require calldata.size - 4 >= 64
    return sub_60b29259[arg1][arg2]
}

function secondsPerDay() {
    return secondsPerDay
}

function sub_6794550d(?) {
    require calldata.size - 4 >= 96
    return sub_6794550d[arg1][arg2][arg3]
}

function burnAddress() {
    return burnAddress
}

function sub_77217a89(?) {
    require calldata.size - 4 >= 96
    return sub_77217a89[arg1][arg2][arg3]
}

function emission() {
    return emission
}

function sub_8454ed27(?) {
    require calldata.size - 4 >= 32
    return sub_8454ed27[arg1]
}

function sub_8fa02e64(?) {
    require calldata.size - 4 >= 96
    return sub_8fa02e64[arg1][arg2][arg3].field_0
}

function totalBurnt() {
    return totalBurnt
}

function currentEra() {
    return currentEra
}

function sub_9f39e641(?) {
    require calldata.size - 4 >= 96
    return sub_9f39e641[arg1][arg2][arg3]
}

function sub_a2d6069b(?) {
    require calldata.size - 4 >= 128
    return sub_a2d6069b[arg1][arg2][arg3][arg4]
}

function sub_a5a1ba21(?) {
    require calldata.size - 4 >= 64
    return sub_a5a1ba21[arg1][arg2]
}

function genesis() {
    return genesis
}

function sub_c3467af9(?) {
    return sub_c3467af9Address
}

function sub_c7c3fd6e(?) {
    require calldata.size - 4 >= 96
    return sub_c7c3fd6e[arg1][arg2][arg3]
}

function sub_d10d7f8c(?) {
    require calldata.size - 4 >= 64
    return sub_d10d7f8c[arg1][arg2]
}

function sub_dac679ec(?) {
    require calldata.size - 4 >= 64
    return sub_dac679ec[arg1][arg2]
}

function getDaysContributedForEra(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return sub_3db9a7ec[address(arg1)][arg2]
}

function sub_dcbeacd9(?) {
    return sub_dcbeacd9Address
}

function sub_e41aa3d1(?) {
    require calldata.size - 4 >= 96
    return sub_e41aa3d1[arg1][arg2][arg3].field_0
}

function sub_ed76f196(?) {
    return sub_ed76f196Address
}

function registryAddress() {
    return registryAddress
}

function nextDayTime() {
    return nextDayTime
}

function _fallback() payable {
    revert
}

function sub_d09b2434(?) {
    require calldata.size - 4 >= 32
    registryAddress = arg1
}

function addExcluded(address arg1) {
    require calldata.size - 4 >= 32
    stor21[address(arg1)] = 1
}

function getNextEraEmission() {
    if emission <= stor1:
        return stor1
    return uint255(stor2.field_1)
}

function getDayEmission() {
    require ext_code.size(sub_dcbeacd9Address)
    staticcall sub_dcbeacd9Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_04ccd183Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= emission:
        return ext_call.return_data[0]
    return emission
}

function sub_7805512b(?) {
    require calldata.size - 4 >= 128
    if not sub_a2d6069b[arg1][arg2][arg3 << 248][address(arg4)]:
        return 0
    require ext_code.size(sub_dcbeacd9Address)
    staticcall sub_dcbeacd9Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_04ccd183Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_8fa02e64[arg1][arg2][arg3 << 248].field_0 <= ext_call.return_data[0]:
        if sub_c7c3fd6e[arg1][arg2][arg3 << 248]:
            return sub_a2d6069b[arg1][arg2][arg3 << 248][address(arg4)] / sub_c7c3fd6e[arg1][arg2][arg3 << 248] * sub_8fa02e64[arg1][arg2][arg3 << 248].field_0, 
                   sub_a2d6069b[arg1][arg2][arg3 << 248][address(arg4)],
                   sub_c7c3fd6e[arg1][arg2][arg3 << 248],
                   sub_8fa02e64[arg1][arg2][arg3 << 248].field_0,
                   ext_call.return_data[0],
                   sub_8fa02e64[arg1][arg2][arg3 << 248].field_0 * sub_a2d6069b[arg1][arg2][arg3 << 248][address(arg4)] / sub_c7c3fd6e[arg1][arg2][arg3 << 248]
    else:
        if sub_c7c3fd6e[arg1][arg2][arg3 << 248]:
            return sub_a2d6069b[arg1][arg2][arg3 << 248][address(arg4)] / sub_c7c3fd6e[arg1][arg2][arg3 << 248] * ext_call.return_data[0], 
                   sub_a2d6069b[arg1][arg2][arg3 << 248][address(arg4)],
                   sub_c7c3fd6e[arg1][arg2][arg3 << 248],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0] * sub_a2d6069b[arg1][arg2][arg3 << 248][address(arg4)] / sub_c7c3fd6e[arg1][arg2][arg3 << 248]
    ('iszero', ('stor', ('map', ('mask_shl', 8, 0, 248, ('param', 'arg3')), ('map', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'sub_c7c3fd6e', 31))))))
    revert
}

function sub_12827078(?) payable {
    require calldata.size - 4 >= 96
    if arg3 < 1:
        revert with 0, 'LPtype must be between 1 to 4'
    if arg3 > 4:
        revert with 0, 'LPtype must be between 1 to 4'
    if not sub_77217a89[stor3][stor4][address(arg1)]:
        sub_3db9a7ec[address(arg1)][stor3]++
        sub_3db9a7ec[address(arg1)][stor3][sub_3db9a7ec[address(arg1)][stor3]] = currentDay
    sub_77217a89[stor3][stor4][address(arg1)] += arg2
    sub_dac679ec[stor3][stor4] += arg2
    sub_60b29259[stor3][stor4] += arg2
    totalBurnt += arg2
    sub_9f39e641[stor3][stor4][arg3 << 248] += arg2
    sub_6794550d[stor3][stor4][arg3 << 248] += arg2
    sub_c7c3fd6e[stor3][stor4][arg3 << 248] += arg2
    sub_a2d6069b[stor3][stor4][arg3 << 248][address(arg1)] += arg2
    if 1 == arg3:
        require ext_code.size(sub_589b1936Address)
        call sub_589b1936Address.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), burnAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if 2 == arg3:
            require ext_code.size(sub_22e9cf06Address)
            call sub_22e9cf06Address.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), burnAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            if 3 == arg3:
                require ext_code.size(sub_c3467af9Address)
                call sub_c3467af9Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), burnAddress, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                if 4 == arg3:
                    require ext_code.size(sub_ed76f196Address)
                    call sub_ed76f196Address.0x23b872dd with:
                         gas gas_remaining wei
                        args address(arg1), burnAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
    emit Burn(currentEra, currentDay, arg2, msg.sender, arg1);
    if block.timestamp >= nextDayTime:
        if currentDay >= daysPerEra:
            currentEra++
            currentDay = 0
            nextEraTime = block.timestamp + (secondsPerDay * daysPerEra)
            if emission <= stor1:
                emission = stor1
                sub_8454ed27[stor3] = stor1
                emit NewEra(currentEra, stor1, nextEraTime);
            else:
                emission = uint255(stor2.field_1)
                sub_8454ed27[stor3] = uint255(stor2.field_1)
                emit NewEra(currentEra, 2 * Mask(256, -1, uint255(stor2.field_1)), nextEraTime);
        currentDay++
        nextDayTime = block.timestamp + secondsPerDay
        require ext_code.size(sub_dcbeacd9Address)
        staticcall sub_dcbeacd9Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_04ccd183Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > emission:
            sub_d10d7f8c[stor3][stor4] = emission
            sub_a5a1ba21[stor3][stor4] = emission
            sub_e41aa3d1[stor3][stor4][1].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][2].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][3].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][4].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][1].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][2].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][3].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][4].field_0 = Mask(254, 0, stor2.field_2)
        else:
            emission = ext_call.return_data[0]
            sub_d10d7f8c[stor3][stor4] = ext_call.return_data[0]
            sub_a5a1ba21[stor3][stor4] = ext_call.return_data[0]
            sub_e41aa3d1[stor3][stor4][1].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][1].field_254 = 0
            sub_e41aa3d1[stor3][stor4][2].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][2].field_254 = 0
            sub_e41aa3d1[stor3][stor4][3].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][3].field_254 = 0
            sub_e41aa3d1[stor3][stor4][4].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][4].field_254 = 0
            sub_8fa02e64[stor3][stor4][1].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][1].field_254 = 0
            sub_8fa02e64[stor3][stor4][2].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][2].field_254 = 0
            sub_8fa02e64[stor3][stor4][3].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][3].field_254 = 0
            sub_8fa02e64[stor3][stor4][4].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][4].field_254 = 0
        emit NewDay(currentEra, currentDay, nextDayTime);
}

function sub_4864e540(?) payable {
    require calldata.size - 4 >= 64
    if arg2 < 1:
        revert with 0, 'LPtype must be between 1 to 4'
    if arg2 > 4:
        revert with 0, 'LPtype must be between 1 to 4'
    if not sub_77217a89[stor3][stor4][address(msg.sender)]:
        sub_3db9a7ec[address(msg.sender)][stor3]++
        sub_3db9a7ec[address(msg.sender)][stor3][sub_3db9a7ec[address(msg.sender)][stor3]] = currentDay
    sub_77217a89[stor3][stor4][address(msg.sender)] += arg1
    sub_dac679ec[stor3][stor4] += arg1
    sub_60b29259[stor3][stor4] += arg1
    totalBurnt += arg1
    sub_9f39e641[stor3][stor4][arg2 << 248] += arg1
    sub_6794550d[stor3][stor4][arg2 << 248] += arg1
    sub_c7c3fd6e[stor3][stor4][arg2 << 248] += arg1
    sub_a2d6069b[stor3][stor4][arg2 << 248][address(msg.sender)] += arg1
    if 1 == arg2:
        require ext_code.size(sub_589b1936Address)
        call sub_589b1936Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, burnAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if 2 == arg2:
            require ext_code.size(sub_22e9cf06Address)
            call sub_22e9cf06Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, burnAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            if 3 == arg2:
                require ext_code.size(sub_c3467af9Address)
                call sub_c3467af9Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, burnAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                if 4 == arg2:
                    require ext_code.size(sub_ed76f196Address)
                    call sub_ed76f196Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, burnAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
    emit Burn(currentEra, currentDay, arg1, msg.sender, msg.sender);
    if block.timestamp >= nextDayTime:
        if currentDay >= daysPerEra:
            currentEra++
            currentDay = 0
            nextEraTime = block.timestamp + (secondsPerDay * daysPerEra)
            if emission <= stor1:
                emission = stor1
                sub_8454ed27[stor3] = stor1
                emit NewEra(currentEra, stor1, nextEraTime);
            else:
                emission = uint255(stor2.field_1)
                sub_8454ed27[stor3] = uint255(stor2.field_1)
                emit NewEra(currentEra, 2 * Mask(256, -1, uint255(stor2.field_1)), nextEraTime);
        currentDay++
        nextDayTime = block.timestamp + secondsPerDay
        require ext_code.size(sub_dcbeacd9Address)
        staticcall sub_dcbeacd9Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_04ccd183Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > emission:
            sub_d10d7f8c[stor3][stor4] = emission
            sub_a5a1ba21[stor3][stor4] = emission
            sub_e41aa3d1[stor3][stor4][1].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][2].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][3].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][4].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][1].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][2].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][3].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][4].field_0 = Mask(254, 0, stor2.field_2)
        else:
            emission = ext_call.return_data[0]
            sub_d10d7f8c[stor3][stor4] = ext_call.return_data[0]
            sub_a5a1ba21[stor3][stor4] = ext_call.return_data[0]
            sub_e41aa3d1[stor3][stor4][1].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][1].field_254 = 0
            sub_e41aa3d1[stor3][stor4][2].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][2].field_254 = 0
            sub_e41aa3d1[stor3][stor4][3].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][3].field_254 = 0
            sub_e41aa3d1[stor3][stor4][4].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][4].field_254 = 0
            sub_8fa02e64[stor3][stor4][1].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][1].field_254 = 0
            sub_8fa02e64[stor3][stor4][2].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][2].field_254 = 0
            sub_8fa02e64[stor3][stor4][3].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][3].field_254 = 0
            sub_8fa02e64[stor3][stor4][4].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][4].field_254 = 0
        emit NewDay(currentEra, currentDay, nextDayTime);
}

function withdrawShareForMember(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if block.timestamp >= nextDayTime:
        if currentDay >= daysPerEra:
            currentEra++
            currentDay = 0
            nextEraTime = block.timestamp + (secondsPerDay * daysPerEra)
            if emission <= stor1:
                emission = stor1
                sub_8454ed27[stor3] = stor1
                emit NewEra(currentEra, stor1, nextEraTime);
            else:
                emission = uint255(stor2.field_1)
                sub_8454ed27[stor3] = uint255(stor2.field_1)
                emit NewEra(currentEra, 2 * Mask(256, -1, uint255(stor2.field_1)), nextEraTime);
        currentDay++
        nextDayTime = block.timestamp + secondsPerDay
        require ext_code.size(sub_dcbeacd9Address)
        staticcall sub_dcbeacd9Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_04ccd183Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > emission:
            sub_d10d7f8c[stor3][stor4] = emission
            sub_a5a1ba21[stor3][stor4] = emission
            sub_e41aa3d1[stor3][stor4][1].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][2].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][3].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][4].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][1].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][2].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][3].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][4].field_0 = Mask(254, 0, stor2.field_2)
        else:
            emission = ext_call.return_data[0]
            sub_d10d7f8c[stor3][stor4] = ext_call.return_data[0]
            sub_a5a1ba21[stor3][stor4] = ext_call.return_data[0]
            sub_e41aa3d1[stor3][stor4][1].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][1].field_254 = 0
            sub_e41aa3d1[stor3][stor4][2].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][2].field_254 = 0
            sub_e41aa3d1[stor3][stor4][3].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][3].field_254 = 0
            sub_e41aa3d1[stor3][stor4][4].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][4].field_254 = 0
            sub_8fa02e64[stor3][stor4][1].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][1].field_254 = 0
            sub_8fa02e64[stor3][stor4][2].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][2].field_254 = 0
            sub_8fa02e64[stor3][stor4][3].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][3].field_254 = 0
            sub_8fa02e64[stor3][stor4][4].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][4].field_254 = 0
        emit NewDay(currentEra, currentDay, nextDayTime);
    if arg1 < currentEra:
        if sub_77217a89[arg1][arg2][address(arg3)]:
            idx = 1
            while uint8(idx) < 5:
                mem[0] = arg3
                mem[32] = sha3(idx << 248, sha3(arg2, sha3(arg1, 29)))
                if sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)]:
                    mem[0] = uint8(idx)
                    mem[32] = sha3(arg2, sha3(arg1, 33))
                    mem[100] = sub_04ccd183Address
                    require ext_code.size(sub_dcbeacd9Address)
                    staticcall sub_dcbeacd9Address.0x70a08231 with:
                            gas gas_remaining wei
                           args sub_04ccd183Address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require sub_c7c3fd6e[arg1][arg2][idx << 248]
                    if sub_8fa02e64[arg1][arg2][idx << 248].field_0 <= ext_call.return_data[0]:
                        if sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] != 0:
                            sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] = 0
                            sub_c7c3fd6e[arg1][arg2][idx << 248] -= sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)]
                            sub_8fa02e64[arg1][arg2][idx << 248].field_0 -= sub_8fa02e64[arg1][arg2][idx << 248].field_0 * sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                            sub_77217a89[arg1][arg2][address(arg3)] = 0
                            sub_dac679ec[arg1][arg2] -= sub_77217a89[arg1][arg2][address(arg3)]
                            mem[0] = arg2
                            mem[32] = sha3(arg1, 18)
                            sub_a5a1ba21[arg1][arg2] -= sub_8fa02e64[arg1][arg2][idx << 248].field_0 * sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                    else:
                        if sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] != 0:
                            sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] = 0
                            sub_c7c3fd6e[arg1][arg2][idx << 248] -= sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)]
                            sub_8fa02e64[arg1][arg2][idx << 248].field_0 -= ext_call.return_data[0] * sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                            sub_77217a89[arg1][arg2][address(arg3)] = 0
                            sub_dac679ec[arg1][arg2] -= sub_77217a89[arg1][arg2][address(arg3)]
                            mem[0] = arg2
                            mem[32] = sha3(arg1, 18)
                            sub_a5a1ba21[arg1][arg2] -= ext_call.return_data[0] * sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                idx = idx + 1
                continue 
            require ext_code.size(sub_dcbeacd9Address)
            call sub_dcbeacd9Address.0x23b872dd with:
                 gas gas_remaining wei
                args sub_04ccd183Address, address(arg3), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Withdrawal(arg1, arg2, 0, msg.sender, arg3);
    else:
        if arg1 == currentEra:
            if arg2 < currentDay:
                if sub_77217a89[arg1][arg2][address(arg3)]:
                    idx = 1
                    while uint8(idx) < 5:
                        mem[0] = arg3
                        mem[32] = sha3(idx << 248, sha3(arg2, sha3(arg1, 29)))
                        if sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)]:
                            mem[0] = uint8(idx)
                            mem[32] = sha3(arg2, sha3(arg1, 33))
                            mem[100] = sub_04ccd183Address
                            require ext_code.size(sub_dcbeacd9Address)
                            staticcall sub_dcbeacd9Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_04ccd183Address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require sub_c7c3fd6e[arg1][arg2][idx << 248]
                            if sub_8fa02e64[arg1][arg2][idx << 248].field_0 <= ext_call.return_data[0]:
                                if sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] != 0:
                                    sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] = 0
                                    sub_c7c3fd6e[arg1][arg2][idx << 248] -= sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)]
                                    sub_8fa02e64[arg1][arg2][idx << 248].field_0 -= sub_8fa02e64[arg1][arg2][idx << 248].field_0 * sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                                    sub_77217a89[arg1][arg2][address(arg3)] = 0
                                    sub_dac679ec[arg1][arg2] -= sub_77217a89[arg1][arg2][address(arg3)]
                                    mem[0] = arg2
                                    mem[32] = sha3(arg1, 18)
                                    sub_a5a1ba21[arg1][arg2] -= sub_8fa02e64[arg1][arg2][idx << 248].field_0 * sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                            else:
                                if sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] != 0:
                                    sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] = 0
                                    sub_c7c3fd6e[arg1][arg2][idx << 248] -= sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)]
                                    sub_8fa02e64[arg1][arg2][idx << 248].field_0 -= ext_call.return_data[0] * sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                                    sub_77217a89[arg1][arg2][address(arg3)] = 0
                                    sub_dac679ec[arg1][arg2] -= sub_77217a89[arg1][arg2][address(arg3)]
                                    mem[0] = arg2
                                    mem[32] = sha3(arg1, 18)
                                    sub_a5a1ba21[arg1][arg2] -= ext_call.return_data[0] * sub_a2d6069b[arg1][arg2][idx << 248][address(arg3)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                        idx = idx + 1
                        continue 
                    require ext_code.size(sub_dcbeacd9Address)
                    call sub_dcbeacd9Address.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_04ccd183Address, address(arg3), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Withdrawal(arg1, arg2, 0, msg.sender, arg3);
}

function withdrawShare(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if block.timestamp >= nextDayTime:
        if currentDay >= daysPerEra:
            currentEra++
            currentDay = 0
            nextEraTime = block.timestamp + (secondsPerDay * daysPerEra)
            if emission <= stor1:
                emission = stor1
                sub_8454ed27[stor3] = stor1
                emit NewEra(currentEra, stor1, nextEraTime);
            else:
                emission = uint255(stor2.field_1)
                sub_8454ed27[stor3] = uint255(stor2.field_1)
                emit NewEra(currentEra, 2 * Mask(256, -1, uint255(stor2.field_1)), nextEraTime);
        currentDay++
        nextDayTime = block.timestamp + secondsPerDay
        require ext_code.size(sub_dcbeacd9Address)
        staticcall sub_dcbeacd9Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_04ccd183Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > emission:
            sub_d10d7f8c[stor3][stor4] = emission
            sub_a5a1ba21[stor3][stor4] = emission
            sub_e41aa3d1[stor3][stor4][1].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][2].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][3].field_0 = Mask(254, 0, stor2.field_2)
            sub_e41aa3d1[stor3][stor4][4].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][1].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][2].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][3].field_0 = Mask(254, 0, stor2.field_2)
            sub_8fa02e64[stor3][stor4][4].field_0 = Mask(254, 0, stor2.field_2)
        else:
            emission = ext_call.return_data[0]
            sub_d10d7f8c[stor3][stor4] = ext_call.return_data[0]
            sub_a5a1ba21[stor3][stor4] = ext_call.return_data[0]
            sub_e41aa3d1[stor3][stor4][1].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][1].field_254 = 0
            sub_e41aa3d1[stor3][stor4][2].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][2].field_254 = 0
            sub_e41aa3d1[stor3][stor4][3].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][3].field_254 = 0
            sub_e41aa3d1[stor3][stor4][4].field_0 = ext_call.return_data[0] / 4
            sub_e41aa3d1[stor3][stor4][4].field_254 = 0
            sub_8fa02e64[stor3][stor4][1].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][1].field_254 = 0
            sub_8fa02e64[stor3][stor4][2].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][2].field_254 = 0
            sub_8fa02e64[stor3][stor4][3].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][3].field_254 = 0
            sub_8fa02e64[stor3][stor4][4].field_0 = ext_call.return_data[0] / 4
            sub_8fa02e64[stor3][stor4][4].field_254 = 0
        emit NewDay(currentEra, currentDay, nextDayTime);
    if arg1 < currentEra:
        if sub_77217a89[arg1][arg2][address(msg.sender)]:
            idx = 1
            while uint8(idx) < 5:
                mem[0] = msg.sender
                mem[32] = sha3(idx << 248, sha3(arg2, sha3(arg1, 29)))
                if sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)]:
                    mem[0] = uint8(idx)
                    mem[32] = sha3(arg2, sha3(arg1, 33))
                    mem[100] = sub_04ccd183Address
                    require ext_code.size(sub_dcbeacd9Address)
                    staticcall sub_dcbeacd9Address.0x70a08231 with:
                            gas gas_remaining wei
                           args sub_04ccd183Address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require sub_c7c3fd6e[arg1][arg2][idx << 248]
                    if sub_8fa02e64[arg1][arg2][idx << 248].field_0 <= ext_call.return_data[0]:
                        if sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] != 0:
                            sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] = 0
                            sub_c7c3fd6e[arg1][arg2][idx << 248] -= sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)]
                            sub_8fa02e64[arg1][arg2][idx << 248].field_0 -= sub_8fa02e64[arg1][arg2][idx << 248].field_0 * sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                            sub_77217a89[arg1][arg2][address(msg.sender)] = 0
                            sub_dac679ec[arg1][arg2] -= sub_77217a89[arg1][arg2][address(msg.sender)]
                            mem[0] = arg2
                            mem[32] = sha3(arg1, 18)
                            sub_a5a1ba21[arg1][arg2] -= sub_8fa02e64[arg1][arg2][idx << 248].field_0 * sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                    else:
                        if sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] != 0:
                            sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] = 0
                            sub_c7c3fd6e[arg1][arg2][idx << 248] -= sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)]
                            sub_8fa02e64[arg1][arg2][idx << 248].field_0 -= ext_call.return_data[0] * sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                            sub_77217a89[arg1][arg2][address(msg.sender)] = 0
                            sub_dac679ec[arg1][arg2] -= sub_77217a89[arg1][arg2][address(msg.sender)]
                            mem[0] = arg2
                            mem[32] = sha3(arg1, 18)
                            sub_a5a1ba21[arg1][arg2] -= ext_call.return_data[0] * sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                idx = idx + 1
                continue 
            require ext_code.size(sub_dcbeacd9Address)
            call sub_dcbeacd9Address.0x23b872dd with:
                 gas gas_remaining wei
                args sub_04ccd183Address, msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Withdrawal(arg1, arg2, 0, msg.sender, msg.sender);
    else:
        if arg1 == currentEra:
            if arg2 < currentDay:
                if sub_77217a89[arg1][arg2][address(msg.sender)]:
                    idx = 1
                    while uint8(idx) < 5:
                        mem[0] = msg.sender
                        mem[32] = sha3(idx << 248, sha3(arg2, sha3(arg1, 29)))
                        if sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)]:
                            mem[0] = uint8(idx)
                            mem[32] = sha3(arg2, sha3(arg1, 33))
                            mem[100] = sub_04ccd183Address
                            require ext_code.size(sub_dcbeacd9Address)
                            staticcall sub_dcbeacd9Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_04ccd183Address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require sub_c7c3fd6e[arg1][arg2][idx << 248]
                            if sub_8fa02e64[arg1][arg2][idx << 248].field_0 <= ext_call.return_data[0]:
                                if sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] != 0:
                                    sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] = 0
                                    sub_c7c3fd6e[arg1][arg2][idx << 248] -= sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)]
                                    sub_8fa02e64[arg1][arg2][idx << 248].field_0 -= sub_8fa02e64[arg1][arg2][idx << 248].field_0 * sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                                    sub_77217a89[arg1][arg2][address(msg.sender)] = 0
                                    sub_dac679ec[arg1][arg2] -= sub_77217a89[arg1][arg2][address(msg.sender)]
                                    mem[0] = arg2
                                    mem[32] = sha3(arg1, 18)
                                    sub_a5a1ba21[arg1][arg2] -= sub_8fa02e64[arg1][arg2][idx << 248].field_0 * sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                            else:
                                if sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] != 0:
                                    sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] = 0
                                    sub_c7c3fd6e[arg1][arg2][idx << 248] -= sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)]
                                    sub_8fa02e64[arg1][arg2][idx << 248].field_0 -= ext_call.return_data[0] * sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                                    sub_77217a89[arg1][arg2][address(msg.sender)] = 0
                                    sub_dac679ec[arg1][arg2] -= sub_77217a89[arg1][arg2][address(msg.sender)]
                                    mem[0] = arg2
                                    mem[32] = sha3(arg1, 18)
                                    sub_a5a1ba21[arg1][arg2] -= ext_call.return_data[0] * sub_a2d6069b[arg1][arg2][idx << 248][address(msg.sender)] / sub_c7c3fd6e[arg1][arg2][idx << 248]
                        idx = idx + 1
                        continue 
                    require ext_code.size(sub_dcbeacd9Address)
                    call sub_dcbeacd9Address.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_04ccd183Address, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Withdrawal(arg1, arg2, 0, msg.sender, msg.sender);
}



}
