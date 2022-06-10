contract main {




// =====================  Runtime code  =====================


#
#  - sub_4d3a2b97(?)
#
address owner;
address stor1;
uint256 fee;
uint256 minPrice;
uint256 transferFee;
uint256 stor5;
uint256 stor6;
uint8 stor7;
mapping of struct summoner;
array of uint256 stor9;
mapping of uint256 balanceBy;

function getBalanceByAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceBy[address(arg1)]
}

function getMyBalance() {
    return balanceBy[address(msg.sender)]
}

function sub_613a1de4(?) {
    return stor9.length
}

function owner() {
    return owner
}

function getTransferFee() {
    return transferFee
}

function getFee() {
    return fee
}

function getMinPrice() {
    return minPrice
}

function getSummoner(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if summoner[arg1].field_1792 > 2:
        revert with 'NH{q', 33
    if not summoner[arg1].field_512:
        revert with 0, 'No summoner for that id'
    if summoner[arg1].field_1792 >= 3:
        revert with 'NH{q', 33
    return summoner[arg1].field_0, 
           summoner[arg1].field_256,
           summoner[arg1].field_512,
           summoner[arg1].field_768,
           summoner[arg1].field_1024,
           summoner[arg1].field_1280,
           summoner[arg1].field_1536,
           summoner[arg1].field_1792
}

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor7:
        revert with 0, 'Market is already unpaused'
    stor7 = 0
}

function setMinPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minPrice = arg1
    emit MinPriceChanged(minPrice);
}

function setTransferFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    transferFee = arg1
    emit TransferFeeChanged(transferFee);
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 20:
        revert with 0, 'don't be greater than 20%!'
    fee = arg1
    emit FeeChanged(fee);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function unlist(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if summoner[arg1].field_1792 > 2:
        revert with 'NH{q', 33
    require msg.sender == summoner[arg1].field_512
    summoner[arg1].field_512 = summoner[arg1].field_512
    summoner[arg1].field_768 = summoner[arg1].field_768
    summoner[arg1].field_1024 = summoner[arg1].field_1024
    summoner[arg1].field_1792 = 1
    if not stor6:
        revert with 'NH{q', 17
    stor6--
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), summoner[arg1].field_512, summoner[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Unlisted(arg1);
}

function collectFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5 <= 0:
        revert with 0, 'No fee left'
    if stor5 and 10^18 > -1 / stor5:
        revert with 'NH{q', 17
    if eth.balance(this.address) < 10^18 * stor5:
        revert with 0, 'Address: insufficient balance'
    call owner with:
       value 10^18 * stor5 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function withdraw() {
    if balanceBy[address(msg.sender)] > 0:
        balanceBy[address(msg.sender)] = 0
        if balanceBy[address(msg.sender)] and 10^18 > -1 / balanceBy[address(msg.sender)]:
            revert with 'NH{q', 17
        if eth.balance(this.address) < 10^18 * balanceBy[address(msg.sender)]:
            revert with 0, 'Address: insufficient balance'
        call msg.sender with:
           value 10^18 * balanceBy[address(msg.sender)] wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        ('bool', 'ext_call.success')
}

function sub_33cac34e(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    while idx < stor9.length:
        mem[0] = 9
        _13 = mem[64]
        mem[64] = mem[64] + 256
        mem[_13] = 0
        mem[_13 + 32] = 0
        mem[_13 + 64] = 0
        mem[_13 + 96] = 0
        mem[_13 + 128] = 0
        mem[_13 + 160] = 0
        mem[_13 + 192] = 0
        mem[_13 + 224] = 0
        mem[0] = stor9[idx]
        mem[32] = 8
        _15 = mem[64]
        mem[64] = mem[64] + 256
        mem[_15] = summoner[stor9[idx]].field_0
        mem[_15 + 32] = summoner[stor9[idx]].field_256
        mem[_15 + 64] = summoner[stor9[idx]].field_512
        mem[_15 + 96] = summoner[stor9[idx]].field_768
        mem[_15 + 128] = summoner[stor9[idx]].field_1024
        mem[_15 + 160] = summoner[stor9[idx]].field_1280
        mem[_15 + 192] = summoner[stor9[idx]].field_1536
        if summoner[stor9[idx]].field_1792 > 2:
            revert with 'NH{q', 33
        mem[_15 + 224] = summoner[stor9[idx]].field_1792
        if not summoner[stor9[idx]].field_512:
            revert with 0, 'No summoner for that id'
        if summoner[stor9[idx]].field_512 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_7b20f150(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < stor9.length:
        mem[0] = 9
        _13 = mem[64]
        mem[64] = mem[64] + 256
        mem[_13] = 0
        mem[_13 + 32] = 0
        mem[_13 + 64] = 0
        mem[_13 + 96] = 0
        mem[_13 + 128] = 0
        mem[_13 + 160] = 0
        mem[_13 + 192] = 0
        mem[_13 + 224] = 0
        mem[0] = stor9[idx]
        mem[32] = 8
        _15 = mem[64]
        mem[64] = mem[64] + 256
        mem[_15] = summoner[stor9[idx]].field_0
        mem[_15 + 32] = summoner[stor9[idx]].field_256
        mem[_15 + 64] = summoner[stor9[idx]].field_512
        mem[_15 + 96] = summoner[stor9[idx]].field_768
        mem[_15 + 128] = summoner[stor9[idx]].field_1024
        mem[_15 + 160] = summoner[stor9[idx]].field_1280
        mem[_15 + 192] = summoner[stor9[idx]].field_1536
        if summoner[stor9[idx]].field_1792 > 2:
            revert with 'NH{q', 33
        mem[_15 + 224] = summoner[stor9[idx]].field_1792
        if not summoner[stor9[idx]].field_512:
            revert with 0, 'No summoner for that id'
        if summoner[stor9[idx]].field_512 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7:
        revert with 0, 'Market is already paused'
    if summoner[arg1].field_1792 > 2:
        revert with 'NH{q', 33
    if summoner[arg1].field_1280 and 10^18 > -1 / summoner[arg1].field_1280:
        revert with 'NH{q', 17
    if 10^18 * summoner[arg1].field_1280 != msg.value:
        revert with 0, 'wrong value'
    if summoner[arg1].field_1792 > 2:
        revert with 'NH{q', 33
    if summoner[arg1].field_1792:
        revert with 0, 'summoner not listed'
    if summoner[arg1].field_768:
        if summoner[arg1].field_768 != msg.sender:
            revert with 0, 'Wrong sender'
    summoner[arg1].field_512 = summoner[arg1].field_512
    summoner[arg1].field_768 = msg.sender
    summoner[arg1].field_1024 = summoner[arg1].field_1024
    summoner[arg1].field_1792 = 2
    if balanceBy[stor8[arg1].field_512] > -summoner[arg1].field_1536 - 1:
        revert with 'NH{q', 17
    balanceBy[stor8[arg1].field_512] += summoner[arg1].field_1536
    if not stor6:
        revert with 'NH{q', 17
    stor6--
    if summoner[arg1].field_1280 < summoner[arg1].field_1536:
        revert with 'NH{q', 17
    if stor5 > -summoner[arg1].field_1280 + summoner[arg1].field_1536 - 1:
        revert with 'NH{q', 17
    stor5 = stor5 + summoner[arg1].field_1280 - summoner[arg1].field_1536
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, summoner[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Bought(arg1);
}

function sub_bc6886d8(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == uint8(arg3)
    require arg4 == arg4
    if stor7:
        revert with 0, 'Market is already paused'
    if arg4 and fee > -1 / arg4:
        revert with 'NH{q', 17
    if arg4 < arg4 * fee / 100:
        revert with 'NH{q', 17
    if not address(arg1):
        if arg4 < minPrice:
            revert with 0, 'Price too low'
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_0 = sha3(arg2, msg.sender, arg4, block.timestamp, block.difficulty)
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_256 = arg2
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_512 = msg.sender
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_768 = address(arg1)
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_1024 = uint8(arg3)
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_1032 = 0
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_1280 = arg4
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_1536 = arg4 - (arg4 * fee / 100)
    else:
        if arg4 < transferFee:
            revert with 'NH{q', 17
        if arg4 - transferFee < 0:
            revert with 0, 'Price too low'
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_0 = sha3(arg2, msg.sender, arg4, block.timestamp, block.difficulty)
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_256 = arg2
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_512 = msg.sender
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_768 = address(arg1)
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_1024 = uint8(arg3)
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_1032 = 0
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_1280 = arg4
        summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_1536 = arg4 - transferFee
    summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_1792 = 0
    summoner[arg2][msg.sender][arg4][block.timestamp][block.difficulty].field_2048 = 0
    stor9.length++
    stor9[stor9.length] = sha3(arg2, msg.sender, arg4, block.timestamp, block.difficulty)
    if stor6 == -1:
        revert with 'NH{q', 17
    stor6++
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Listed(sha3(arg2, msg.sender, arg4, block.timestamp, block.difficulty));
}

function sub_4bdad516(?) {
    if stor9.length < 0:
        revert with 'NH{q', 17
    if stor9.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor9.length
    mem[64] = (32 * stor9.length) + 128
    if not stor9.length:
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            _46 = mem[64]
            mem[64] = mem[64] + 256
            mem[_46] = 0
            mem[_46 + 32] = 0
            mem[_46 + 64] = 0
            mem[_46 + 96] = 0
            mem[_46 + 128] = 0
            mem[_46 + 160] = 0
            mem[_46 + 192] = 0
            mem[_46 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _49 = mem[64]
            mem[64] = mem[64] + 256
            mem[_49] = summoner[stor9[idx]].field_0
            mem[_49 + 32] = summoner[stor9[idx]].field_256
            mem[_49 + 64] = summoner[stor9[idx]].field_512
            mem[_49 + 96] = summoner[stor9[idx]].field_768
            mem[_49 + 128] = summoner[stor9[idx]].field_1024
            mem[_49 + 160] = summoner[stor9[idx]].field_1280
            mem[_49 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_49 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < 0:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _49
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _45 = mem[64]
        mem[mem[64]] = 32
        _47 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _47:
            _85 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_85 + 32]
            mem[t + 64] = mem[_85 + 76 len 20]
            mem[t + 96] = mem[_85 + 108 len 20]
            mem[t + 128] = mem[_85 + 144 len 16]
            mem[t + 160] = mem[_85 + 160]
            mem[t + 192] = mem[_85 + 192]
            if mem[_85 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_85 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _45 + (256 * _47) + -mem[64] + 64
    mem[64] = (32 * stor9.length) + 384
    mem[(32 * stor9.length) + 128] = 0
    mem[(32 * stor9.length) + 160] = 0
    mem[(32 * stor9.length) + 192] = 0
    mem[(32 * stor9.length) + 224] = 0
    mem[(32 * stor9.length) + 256] = 0
    mem[(32 * stor9.length) + 288] = 0
    mem[(32 * stor9.length) + 320] = 0
    mem[var22002] = 0
    mem[var24002] = var24001
    if not var24003 - 1:
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            _181 = mem[64]
            mem[64] = mem[64] + 256
            mem[_181] = 0
            mem[_181 + 32] = 0
            mem[_181 + 64] = 0
            mem[_181 + 96] = 0
            mem[_181 + 128] = 0
            mem[_181 + 160] = 0
            mem[_181 + 192] = 0
            mem[_181 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _184 = mem[64]
            mem[64] = mem[64] + 256
            mem[_184] = summoner[stor9[idx]].field_0
            mem[_184 + 32] = summoner[stor9[idx]].field_256
            mem[_184 + 64] = summoner[stor9[idx]].field_512
            mem[_184 + 96] = summoner[stor9[idx]].field_768
            mem[_184 + 128] = summoner[stor9[idx]].field_1024
            mem[_184 + 160] = summoner[stor9[idx]].field_1280
            mem[_184 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_184 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < 0:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _184
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _180 = mem[64]
        mem[mem[64]] = 32
        _182 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _182:
            _220 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_220 + 32]
            mem[t + 64] = mem[_220 + 76 len 20]
            mem[t + 96] = mem[_220 + 108 len 20]
            mem[t + 128] = mem[_220 + 144 len 16]
            mem[t + 160] = mem[_220 + 160]
            mem[t + 192] = mem[_220 + 192]
            if mem[_220 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_220 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _180 + (256 * _182) + -mem[64] + 64
    mem[64] = (32 * stor9.length) + 640
    mem[(32 * stor9.length) + 384] = 0
    mem[(32 * stor9.length) + 416] = 0
    mem[(32 * stor9.length) + 448] = 0
    mem[(32 * stor9.length) + 480] = 0
    mem[(32 * stor9.length) + 512] = 0
    mem[(32 * stor9.length) + 544] = 0
    mem[(32 * stor9.length) + 576] = 0
    mem[var30002] = 0
    mem[var32002] = var32001
    if not var32003 - 1:
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            _316 = mem[64]
            mem[64] = mem[64] + 256
            mem[_316] = 0
            mem[_316 + 32] = 0
            mem[_316 + 64] = 0
            mem[_316 + 96] = 0
            mem[_316 + 128] = 0
            mem[_316 + 160] = 0
            mem[_316 + 192] = 0
            mem[_316 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _319 = mem[64]
            mem[64] = mem[64] + 256
            mem[_319] = summoner[stor9[idx]].field_0
            mem[_319 + 32] = summoner[stor9[idx]].field_256
            mem[_319 + 64] = summoner[stor9[idx]].field_512
            mem[_319 + 96] = summoner[stor9[idx]].field_768
            mem[_319 + 128] = summoner[stor9[idx]].field_1024
            mem[_319 + 160] = summoner[stor9[idx]].field_1280
            mem[_319 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_319 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < 0:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _319
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _315 = mem[64]
        mem[mem[64]] = 32
        _317 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _317:
            _355 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_355 + 32]
            mem[t + 64] = mem[_355 + 76 len 20]
            mem[t + 96] = mem[_355 + 108 len 20]
            mem[t + 128] = mem[_355 + 144 len 16]
            mem[t + 160] = mem[_355 + 160]
            mem[t + 192] = mem[_355 + 192]
            if mem[_355 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_355 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _315 + (256 * _317) + -mem[64] + 64
    mem[64] = (32 * stor9.length) + 896
    mem[(32 * stor9.length) + 640] = 0
    mem[(32 * stor9.length) + 672] = 0
    mem[(32 * stor9.length) + 704] = 0
    mem[(32 * stor9.length) + 736] = 0
    mem[(32 * stor9.length) + 768] = 0
    mem[(32 * stor9.length) + 800] = 0
    mem[(32 * stor9.length) + 832] = 0
    mem[var38002] = 0
    mem[var40002] = var40001
    if not var40003 - 1:
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            _451 = mem[64]
            mem[64] = mem[64] + 256
            mem[_451] = 0
            mem[_451 + 32] = 0
            mem[_451 + 64] = 0
            mem[_451 + 96] = 0
            mem[_451 + 128] = 0
            mem[_451 + 160] = 0
            mem[_451 + 192] = 0
            mem[_451 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _454 = mem[64]
            mem[64] = mem[64] + 256
            mem[_454] = summoner[stor9[idx]].field_0
            mem[_454 + 32] = summoner[stor9[idx]].field_256
            mem[_454 + 64] = summoner[stor9[idx]].field_512
            mem[_454 + 96] = summoner[stor9[idx]].field_768
            mem[_454 + 128] = summoner[stor9[idx]].field_1024
            mem[_454 + 160] = summoner[stor9[idx]].field_1280
            mem[_454 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_454 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < 0:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _454
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _450 = mem[64]
        mem[mem[64]] = 32
        _452 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _452:
            _490 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_490 + 32]
            mem[t + 64] = mem[_490 + 76 len 20]
            mem[t + 96] = mem[_490 + 108 len 20]
            mem[t + 128] = mem[_490 + 144 len 16]
            mem[t + 160] = mem[_490 + 160]
            mem[t + 192] = mem[_490 + 192]
            if mem[_490 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_490 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _450 + (256 * _452) + -mem[64] + 64
    mem[64] = (32 * stor9.length) + 1152
    mem[(32 * stor9.length) + 896] = 0
    mem[(32 * stor9.length) + 928] = 0
    mem[(32 * stor9.length) + 960] = 0
    mem[(32 * stor9.length) + 992] = 0
    mem[(32 * stor9.length) + 1024] = 0
    mem[(32 * stor9.length) + 1056] = 0
    mem[(32 * stor9.length) + 1088] = 0
    mem[var46002] = 0
    mem[var48002] = var48001
    if var48003 - 1:
        # nil
    else:
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            _586 = mem[64]
            mem[64] = mem[64] + 256
            mem[_586] = 0
            mem[_586 + 32] = 0
            mem[_586 + 64] = 0
            mem[_586 + 96] = 0
            mem[_586 + 128] = 0
            mem[_586 + 160] = 0
            mem[_586 + 192] = 0
            mem[_586 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _589 = mem[64]
            mem[64] = mem[64] + 256
            mem[_589] = summoner[stor9[idx]].field_0
            mem[_589 + 32] = summoner[stor9[idx]].field_256
            mem[_589 + 64] = summoner[stor9[idx]].field_512
            mem[_589 + 96] = summoner[stor9[idx]].field_768
            mem[_589 + 128] = summoner[stor9[idx]].field_1024
            mem[_589 + 160] = summoner[stor9[idx]].field_1280
            mem[_589 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_589 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < 0:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _589
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _585 = mem[64]
        mem[mem[64]] = 32
        _587 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _587:
            _625 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_625 + 32]
            mem[t + 64] = mem[_625 + 76 len 20]
            mem[t + 96] = mem[_625 + 108 len 20]
            mem[t + 128] = mem[_625 + 144 len 16]
            mem[t + 160] = mem[_625 + 160]
            mem[t + 192] = mem[_625 + 192]
            if mem[_625 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_625 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _585 + (256 * _587) + -mem[64] + 64
}

function sub_151fefad(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = arg1
        while idx < arg2:
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = 9
            _46 = mem[64]
            mem[64] = mem[64] + 256
            mem[_46] = 0
            mem[_46 + 32] = 0
            mem[_46 + 64] = 0
            mem[_46 + 96] = 0
            mem[_46 + 128] = 0
            mem[_46 + 160] = 0
            mem[_46 + 192] = 0
            mem[_46 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _49 = mem[64]
            mem[64] = mem[64] + 256
            mem[_49] = summoner[stor9[idx]].field_0
            mem[_49 + 32] = summoner[stor9[idx]].field_256
            mem[_49 + 64] = summoner[stor9[idx]].field_512
            mem[_49 + 96] = summoner[stor9[idx]].field_768
            mem[_49 + 128] = summoner[stor9[idx]].field_1024
            mem[_49 + 160] = summoner[stor9[idx]].field_1280
            mem[_49 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_49 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < arg1:
                revert with 'NH{q', 17
            if idx - arg1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg1) + 128] = _49
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _44 = mem[64]
        mem[mem[64]] = 32
        _47 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _47:
            _85 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_85 + 32]
            mem[t + 64] = mem[_85 + 76 len 20]
            mem[t + 96] = mem[_85 + 108 len 20]
            mem[t + 128] = mem[_85 + 144 len 16]
            mem[t + 160] = mem[_85 + 160]
            mem[t + 192] = mem[_85 + 192]
            if mem[_85 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_85 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _44 + (256 * _47) + -mem[64] + 64
    mem[64] = (32 * arg2 - arg1) + 384
    mem[(32 * arg2 - arg1) + 128] = 0
    mem[(32 * arg2 - arg1) + 160] = 0
    mem[(32 * arg2 - arg1) + 192] = 0
    mem[(32 * arg2 - arg1) + 224] = 0
    mem[(32 * arg2 - arg1) + 256] = 0
    mem[(32 * arg2 - arg1) + 288] = 0
    mem[(32 * arg2 - arg1) + 320] = 0
    mem[var38002] = 0
    mem[var40002] = var40001
    if not var40003 - 1:
        idx = arg1
        while idx < arg2:
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = 9
            _181 = mem[64]
            mem[64] = mem[64] + 256
            mem[_181] = 0
            mem[_181 + 32] = 0
            mem[_181 + 64] = 0
            mem[_181 + 96] = 0
            mem[_181 + 128] = 0
            mem[_181 + 160] = 0
            mem[_181 + 192] = 0
            mem[_181 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _184 = mem[64]
            mem[64] = mem[64] + 256
            mem[_184] = summoner[stor9[idx]].field_0
            mem[_184 + 32] = summoner[stor9[idx]].field_256
            mem[_184 + 64] = summoner[stor9[idx]].field_512
            mem[_184 + 96] = summoner[stor9[idx]].field_768
            mem[_184 + 128] = summoner[stor9[idx]].field_1024
            mem[_184 + 160] = summoner[stor9[idx]].field_1280
            mem[_184 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_184 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < arg1:
                revert with 'NH{q', 17
            if idx - arg1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg1) + 128] = _184
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _179 = mem[64]
        mem[mem[64]] = 32
        _182 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _182:
            _220 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_220 + 32]
            mem[t + 64] = mem[_220 + 76 len 20]
            mem[t + 96] = mem[_220 + 108 len 20]
            mem[t + 128] = mem[_220 + 144 len 16]
            mem[t + 160] = mem[_220 + 160]
            mem[t + 192] = mem[_220 + 192]
            if mem[_220 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_220 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _179 + (256 * _182) + -mem[64] + 64
    mem[64] = (32 * arg2 - arg1) + 640
    mem[(32 * arg2 - arg1) + 384] = 0
    mem[(32 * arg2 - arg1) + 416] = 0
    mem[(32 * arg2 - arg1) + 448] = 0
    mem[(32 * arg2 - arg1) + 480] = 0
    mem[(32 * arg2 - arg1) + 512] = 0
    mem[(32 * arg2 - arg1) + 544] = 0
    mem[(32 * arg2 - arg1) + 576] = 0
    mem[var46002] = 0
    mem[var48002] = var48001
    if not var48003 - 1:
        idx = arg1
        while idx < arg2:
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = 9
            _316 = mem[64]
            mem[64] = mem[64] + 256
            mem[_316] = 0
            mem[_316 + 32] = 0
            mem[_316 + 64] = 0
            mem[_316 + 96] = 0
            mem[_316 + 128] = 0
            mem[_316 + 160] = 0
            mem[_316 + 192] = 0
            mem[_316 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _319 = mem[64]
            mem[64] = mem[64] + 256
            mem[_319] = summoner[stor9[idx]].field_0
            mem[_319 + 32] = summoner[stor9[idx]].field_256
            mem[_319 + 64] = summoner[stor9[idx]].field_512
            mem[_319 + 96] = summoner[stor9[idx]].field_768
            mem[_319 + 128] = summoner[stor9[idx]].field_1024
            mem[_319 + 160] = summoner[stor9[idx]].field_1280
            mem[_319 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_319 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < arg1:
                revert with 'NH{q', 17
            if idx - arg1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg1) + 128] = _319
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _314 = mem[64]
        mem[mem[64]] = 32
        _317 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _317:
            _355 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_355 + 32]
            mem[t + 64] = mem[_355 + 76 len 20]
            mem[t + 96] = mem[_355 + 108 len 20]
            mem[t + 128] = mem[_355 + 144 len 16]
            mem[t + 160] = mem[_355 + 160]
            mem[t + 192] = mem[_355 + 192]
            if mem[_355 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_355 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _314 + (256 * _317) + -mem[64] + 64
    mem[64] = (32 * arg2 - arg1) + 896
    mem[(32 * arg2 - arg1) + 640] = 0
    mem[(32 * arg2 - arg1) + 672] = 0
    mem[(32 * arg2 - arg1) + 704] = 0
    mem[(32 * arg2 - arg1) + 736] = 0
    mem[(32 * arg2 - arg1) + 768] = 0
    mem[(32 * arg2 - arg1) + 800] = 0
    mem[(32 * arg2 - arg1) + 832] = 0
    mem[var54002] = 0
    mem[var56002] = var56001
    if not var56003 - 1:
        idx = arg1
        while idx < arg2:
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = 9
            _451 = mem[64]
            mem[64] = mem[64] + 256
            mem[_451] = 0
            mem[_451 + 32] = 0
            mem[_451 + 64] = 0
            mem[_451 + 96] = 0
            mem[_451 + 128] = 0
            mem[_451 + 160] = 0
            mem[_451 + 192] = 0
            mem[_451 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _454 = mem[64]
            mem[64] = mem[64] + 256
            mem[_454] = summoner[stor9[idx]].field_0
            mem[_454 + 32] = summoner[stor9[idx]].field_256
            mem[_454 + 64] = summoner[stor9[idx]].field_512
            mem[_454 + 96] = summoner[stor9[idx]].field_768
            mem[_454 + 128] = summoner[stor9[idx]].field_1024
            mem[_454 + 160] = summoner[stor9[idx]].field_1280
            mem[_454 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_454 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < arg1:
                revert with 'NH{q', 17
            if idx - arg1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg1) + 128] = _454
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _449 = mem[64]
        mem[mem[64]] = 32
        _452 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _452:
            _490 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_490 + 32]
            mem[t + 64] = mem[_490 + 76 len 20]
            mem[t + 96] = mem[_490 + 108 len 20]
            mem[t + 128] = mem[_490 + 144 len 16]
            mem[t + 160] = mem[_490 + 160]
            mem[t + 192] = mem[_490 + 192]
            if mem[_490 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_490 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _449 + (256 * _452) + -mem[64] + 64
    mem[64] = (32 * arg2 - arg1) + 1152
    mem[(32 * arg2 - arg1) + 896] = 0
    mem[(32 * arg2 - arg1) + 928] = 0
    mem[(32 * arg2 - arg1) + 960] = 0
    mem[(32 * arg2 - arg1) + 992] = 0
    mem[(32 * arg2 - arg1) + 1024] = 0
    mem[(32 * arg2 - arg1) + 1056] = 0
    mem[(32 * arg2 - arg1) + 1088] = 0
    mem[var62002] = 0
    mem[var64002] = var64001
    if var64003 - 1:
        # nil
    else:
        idx = arg1
        while idx < arg2:
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = 9
            _586 = mem[64]
            mem[64] = mem[64] + 256
            mem[_586] = 0
            mem[_586 + 32] = 0
            mem[_586 + 64] = 0
            mem[_586 + 96] = 0
            mem[_586 + 128] = 0
            mem[_586 + 160] = 0
            mem[_586 + 192] = 0
            mem[_586 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _589 = mem[64]
            mem[64] = mem[64] + 256
            mem[_589] = summoner[stor9[idx]].field_0
            mem[_589 + 32] = summoner[stor9[idx]].field_256
            mem[_589 + 64] = summoner[stor9[idx]].field_512
            mem[_589 + 96] = summoner[stor9[idx]].field_768
            mem[_589 + 128] = summoner[stor9[idx]].field_1024
            mem[_589 + 160] = summoner[stor9[idx]].field_1280
            mem[_589 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_589 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < arg1:
                revert with 'NH{q', 17
            if idx - arg1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg1) + 128] = _589
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _584 = mem[64]
        mem[mem[64]] = 32
        _587 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _587:
            _625 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_625 + 32]
            mem[t + 64] = mem[_625 + 76 len 20]
            mem[t + 96] = mem[_625 + 108 len 20]
            mem[t + 128] = mem[_625 + 144 len 16]
            mem[t + 160] = mem[_625 + 160]
            mem[t + 192] = mem[_625 + 192]
            if mem[_625 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_625 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _584 + (256 * _587) + -mem[64] + 64
}

function sub_197f4efa(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    while idx < stor9.length:
        mem[0] = 9
        _34 = mem[64]
        mem[64] = mem[64] + 256
        mem[_34] = 0
        mem[_34 + 32] = 0
        mem[_34 + 64] = 0
        mem[_34 + 96] = 0
        mem[_34 + 128] = 0
        mem[_34 + 160] = 0
        mem[_34 + 192] = 0
        mem[_34 + 224] = 0
        mem[0] = stor9[idx]
        mem[32] = 8
        _38 = mem[64]
        mem[64] = mem[64] + 256
        mem[_38] = summoner[stor9[idx]].field_0
        mem[_38 + 32] = summoner[stor9[idx]].field_256
        mem[_38 + 64] = summoner[stor9[idx]].field_512
        mem[_38 + 96] = summoner[stor9[idx]].field_768
        mem[_38 + 128] = summoner[stor9[idx]].field_1024
        mem[_38 + 160] = summoner[stor9[idx]].field_1280
        mem[_38 + 192] = summoner[stor9[idx]].field_1536
        if summoner[stor9[idx]].field_1792 > 2:
            revert with 'NH{q', 33
        mem[_38 + 224] = summoner[stor9[idx]].field_1792
        if not summoner[stor9[idx]].field_512:
            revert with 0, 'No summoner for that id'
        if summoner[stor9[idx]].field_512 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _33 = mem[64]
    mem[mem[64]] = s
    if not s:
        _35 = mem[64] + (32 * s) + 32
        mem[64] = mem[64] + (32 * s) + 288
        mem[_35] = 0
        mem[_35 + 32] = 0
        mem[_35 + 64] = 0
        mem[_35 + 96] = 0
        mem[_35 + 128] = 0
        mem[_35 + 160] = 0
        mem[_35 + 192] = 0
        mem[_35 + 224] = 0
        idx = 0
        s = _35
        s = 0
        while idx < stor9.length:
            mem[0] = 9
            _89 = mem[64]
            mem[64] = mem[64] + 256
            mem[_89] = 0
            mem[_89 + 32] = 0
            mem[_89 + 64] = 0
            mem[_89 + 96] = 0
            mem[_89 + 128] = 0
            mem[_89 + 160] = 0
            mem[_89 + 192] = 0
            mem[_89 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _92 = mem[64]
            mem[64] = mem[64] + 256
            mem[_92] = summoner[stor9[idx]].field_0
            mem[_92 + 32] = summoner[stor9[idx]].field_256
            mem[_92 + 64] = summoner[stor9[idx]].field_512
            mem[_92 + 96] = summoner[stor9[idx]].field_768
            mem[_92 + 128] = summoner[stor9[idx]].field_1024
            mem[_92 + 160] = summoner[stor9[idx]].field_1280
            mem[_92 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_92 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor9[idx]].field_512 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _92
                s = s
                continue 
            if s >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * s) + _33 + 32] = _92
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _92
            s = s + 1
            continue 
        _88 = mem[64]
        mem[mem[64]] = 32
        _90 = mem[_33]
        mem[mem[64] + 32] = mem[_33]
        idx = 0
        s = _33 + 32
        t = mem[64] + 64
        while idx < _90:
            _131 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_131 + 32]
            mem[t + 64] = mem[_131 + 76 len 20]
            mem[t + 96] = mem[_131 + 108 len 20]
            mem[t + 128] = mem[_131 + 144 len 16]
            mem[t + 160] = mem[_131 + 160]
            mem[t + 192] = mem[_131 + 192]
            if mem[_131 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_131 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _88 + (256 * _90) + -mem[64] + 64
    _130 = mem[64] + (32 * s) + 32
    mem[64] = mem[64] + (32 * s) + 288
    mem[_130] = 0
    mem[_130 + 32] = 0
    mem[_130 + 64] = 0
    mem[_130 + 96] = 0
    mem[_130 + 128] = 0
    mem[_130 + 160] = 0
    mem[_130 + 192] = 0
    mem[var20002] = 0
    mem[var22002] = var22001
    if not var22003 - 1:
        mem[64] = _33 + (32 * s) + 544
        mem[_33 + (32 * s) + 288] = 0
        mem[_33 + (32 * s) + 320] = 0
        mem[_33 + (32 * s) + 352] = 0
        mem[_33 + (32 * s) + 384] = 0
        mem[_33 + (32 * s) + 416] = 0
        mem[_33 + (32 * s) + 448] = 0
        mem[_33 + (32 * s) + 480] = 0
        mem[_33 + (32 * s) + 512] = 0
        idx = 0
        t = _33 + (32 * s) + 288
        t = 0
        while idx < stor9.length:
            mem[0] = 9
            _235 = mem[64]
            mem[64] = mem[64] + 256
            mem[_235] = 0
            mem[_235 + 32] = 0
            mem[_235 + 64] = 0
            mem[_235 + 96] = 0
            mem[_235 + 128] = 0
            mem[_235 + 160] = 0
            mem[_235 + 192] = 0
            mem[_235 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _239 = mem[64]
            mem[64] = mem[64] + 256
            mem[_239] = summoner[stor9[idx]].field_0
            mem[_239 + 32] = summoner[stor9[idx]].field_256
            mem[_239 + 64] = summoner[stor9[idx]].field_512
            mem[_239 + 96] = summoner[stor9[idx]].field_768
            mem[_239 + 128] = summoner[stor9[idx]].field_1024
            mem[_239 + 160] = summoner[stor9[idx]].field_1280
            mem[_239 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_239 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor9[idx]].field_512 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = _239
                t = t
                continue 
            if t >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * t) + _33 + 32] = _239
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = _239
            t = t + 1
            continue 
        _234 = mem[64]
        mem[mem[64]] = 32
        _237 = mem[_33]
        mem[mem[64] + 32] = mem[_33]
        idx = 0
        s = _33 + 32
        t = mem[64] + 64
        while idx < _237:
            _277 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_277 + 32]
            mem[t + 64] = mem[_277 + 76 len 20]
            mem[t + 96] = mem[_277 + 108 len 20]
            mem[t + 128] = mem[_277 + 144 len 16]
            mem[t + 160] = mem[_277 + 160]
            mem[t + 192] = mem[_277 + 192]
            if mem[_277 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_277 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _234 + (256 * _237) + -mem[64] + 64
    mem[_33 + (32 * s) + 288] = 0
    mem[_33 + (32 * s) + 320] = 0
    mem[_33 + (32 * s) + 352] = 0
    mem[_33 + (32 * s) + 384] = 0
    mem[_33 + (32 * s) + 416] = 0
    mem[_33 + (32 * s) + 448] = 0
    mem[_33 + (32 * s) + 480] = 0
    mem[var28002] = 0
    mem[var30002] = var30001
    if not var30003 - 1:
        mem[64] = _33 + (32 * s) + 800
        mem[_33 + (32 * s) + 544] = 0
        mem[_33 + (32 * s) + 576] = 0
        mem[_33 + (32 * s) + 608] = 0
        mem[_33 + (32 * s) + 640] = 0
        mem[_33 + (32 * s) + 672] = 0
        mem[_33 + (32 * s) + 704] = 0
        mem[_33 + (32 * s) + 736] = 0
        mem[_33 + (32 * s) + 768] = 0
        idx = 0
        t = _33 + (32 * s) + 544
        t = 0
        while idx < stor9.length:
            mem[0] = 9
            _381 = mem[64]
            mem[64] = mem[64] + 256
            mem[_381] = 0
            mem[_381 + 32] = 0
            mem[_381 + 64] = 0
            mem[_381 + 96] = 0
            mem[_381 + 128] = 0
            mem[_381 + 160] = 0
            mem[_381 + 192] = 0
            mem[_381 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _385 = mem[64]
            mem[64] = mem[64] + 256
            mem[_385] = summoner[stor9[idx]].field_0
            mem[_385 + 32] = summoner[stor9[idx]].field_256
            mem[_385 + 64] = summoner[stor9[idx]].field_512
            mem[_385 + 96] = summoner[stor9[idx]].field_768
            mem[_385 + 128] = summoner[stor9[idx]].field_1024
            mem[_385 + 160] = summoner[stor9[idx]].field_1280
            mem[_385 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_385 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor9[idx]].field_512 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = _385
                t = t
                continue 
            if t >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * t) + _33 + 32] = _385
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = _385
            t = t + 1
            continue 
        _380 = mem[64]
        mem[mem[64]] = 32
        _383 = mem[_33]
        mem[mem[64] + 32] = mem[_33]
        idx = 0
        s = _33 + 32
        t = mem[64] + 64
        while idx < _383:
            _423 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_423 + 32]
            mem[t + 64] = mem[_423 + 76 len 20]
            mem[t + 96] = mem[_423 + 108 len 20]
            mem[t + 128] = mem[_423 + 144 len 16]
            mem[t + 160] = mem[_423 + 160]
            mem[t + 192] = mem[_423 + 192]
            if mem[_423 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_423 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _380 + (256 * _383) + -mem[64] + 64
    mem[_33 + (32 * s) + 544] = 0
    mem[_33 + (32 * s) + 576] = 0
    mem[_33 + (32 * s) + 608] = 0
    mem[_33 + (32 * s) + 640] = 0
    mem[_33 + (32 * s) + 672] = 0
    mem[_33 + (32 * s) + 704] = 0
    mem[_33 + (32 * s) + 736] = 0
    mem[var36002] = 0
    mem[var38002] = var38001
    if not var38003 - 1:
        mem[64] = _33 + (32 * s) + 1056
        mem[_33 + (32 * s) + 800] = 0
        mem[_33 + (32 * s) + 832] = 0
        mem[_33 + (32 * s) + 864] = 0
        mem[_33 + (32 * s) + 896] = 0
        mem[_33 + (32 * s) + 928] = 0
        mem[_33 + (32 * s) + 960] = 0
        mem[_33 + (32 * s) + 992] = 0
        mem[_33 + (32 * s) + 1024] = 0
        idx = 0
        t = _33 + (32 * s) + 800
        t = 0
        while idx < stor9.length:
            mem[0] = 9
            _527 = mem[64]
            mem[64] = mem[64] + 256
            mem[_527] = 0
            mem[_527 + 32] = 0
            mem[_527 + 64] = 0
            mem[_527 + 96] = 0
            mem[_527 + 128] = 0
            mem[_527 + 160] = 0
            mem[_527 + 192] = 0
            mem[_527 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _531 = mem[64]
            mem[64] = mem[64] + 256
            mem[_531] = summoner[stor9[idx]].field_0
            mem[_531 + 32] = summoner[stor9[idx]].field_256
            mem[_531 + 64] = summoner[stor9[idx]].field_512
            mem[_531 + 96] = summoner[stor9[idx]].field_768
            mem[_531 + 128] = summoner[stor9[idx]].field_1024
            mem[_531 + 160] = summoner[stor9[idx]].field_1280
            mem[_531 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_531 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor9[idx]].field_512 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = _531
                t = t
                continue 
            if t >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * t) + _33 + 32] = _531
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = _531
            t = t + 1
            continue 
        _526 = mem[64]
        mem[mem[64]] = 32
        _529 = mem[_33]
        mem[mem[64] + 32] = mem[_33]
        idx = 0
        s = _33 + 32
        t = mem[64] + 64
        while idx < _529:
            _569 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_569 + 32]
            mem[t + 64] = mem[_569 + 76 len 20]
            mem[t + 96] = mem[_569 + 108 len 20]
            mem[t + 128] = mem[_569 + 144 len 16]
            mem[t + 160] = mem[_569 + 160]
            mem[t + 192] = mem[_569 + 192]
            if mem[_569 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_569 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _526 + (256 * _529) + -mem[64] + 64
    mem[_33 + (32 * s) + 800] = 0
    mem[_33 + (32 * s) + 832] = 0
    mem[_33 + (32 * s) + 864] = 0
    mem[_33 + (32 * s) + 896] = 0
    mem[_33 + (32 * s) + 928] = 0
    mem[_33 + (32 * s) + 960] = 0
    mem[_33 + (32 * s) + 992] = 0
    mem[var44002] = 0
    mem[var46002] = var46001
    if var46003 - 1:
        # nil
    else:
        mem[64] = _33 + (32 * s) + 1312
        mem[_33 + (32 * s) + 1056] = 0
        mem[_33 + (32 * s) + 1088] = 0
        mem[_33 + (32 * s) + 1120] = 0
        mem[_33 + (32 * s) + 1152] = 0
        mem[_33 + (32 * s) + 1184] = 0
        mem[_33 + (32 * s) + 1216] = 0
        mem[_33 + (32 * s) + 1248] = 0
        mem[_33 + (32 * s) + 1280] = 0
        idx = 0
        t = _33 + (32 * s) + 1056
        t = 0
        while idx < stor9.length:
            mem[0] = 9
            _673 = mem[64]
            mem[64] = mem[64] + 256
            mem[_673] = 0
            mem[_673 + 32] = 0
            mem[_673 + 64] = 0
            mem[_673 + 96] = 0
            mem[_673 + 128] = 0
            mem[_673 + 160] = 0
            mem[_673 + 192] = 0
            mem[_673 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _677 = mem[64]
            mem[64] = mem[64] + 256
            mem[_677] = summoner[stor9[idx]].field_0
            mem[_677 + 32] = summoner[stor9[idx]].field_256
            mem[_677 + 64] = summoner[stor9[idx]].field_512
            mem[_677 + 96] = summoner[stor9[idx]].field_768
            mem[_677 + 128] = summoner[stor9[idx]].field_1024
            mem[_677 + 160] = summoner[stor9[idx]].field_1280
            mem[_677 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_677 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor9[idx]].field_512 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = _677
                t = t
                continue 
            if t >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * t) + _33 + 32] = _677
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = _677
            t = t + 1
            continue 
        _672 = mem[64]
        mem[mem[64]] = 32
        _675 = mem[_33]
        mem[mem[64] + 32] = mem[_33]
        idx = 0
        s = _33 + 32
        t = mem[64] + 64
        while idx < _675:
            _715 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_715 + 32]
            mem[t + 64] = mem[_715 + 76 len 20]
            mem[t + 96] = mem[_715 + 108 len 20]
            mem[t + 128] = mem[_715 + 144 len 16]
            mem[t + 160] = mem[_715 + 160]
            mem[t + 192] = mem[_715 + 192]
            if mem[_715 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_715 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _672 + (256 * _675) + -mem[64] + 64
}

function sub_a98d9588(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < stor9.length:
        mem[0] = 9
        _34 = mem[64]
        mem[64] = mem[64] + 256
        mem[_34] = 0
        mem[_34 + 32] = 0
        mem[_34 + 64] = 0
        mem[_34 + 96] = 0
        mem[_34 + 128] = 0
        mem[_34 + 160] = 0
        mem[_34 + 192] = 0
        mem[_34 + 224] = 0
        mem[0] = stor9[idx]
        mem[32] = 8
        _38 = mem[64]
        mem[64] = mem[64] + 256
        mem[_38] = summoner[stor9[idx]].field_0
        mem[_38 + 32] = summoner[stor9[idx]].field_256
        mem[_38 + 64] = summoner[stor9[idx]].field_512
        mem[_38 + 96] = summoner[stor9[idx]].field_768
        mem[_38 + 128] = summoner[stor9[idx]].field_1024
        mem[_38 + 160] = summoner[stor9[idx]].field_1280
        mem[_38 + 192] = summoner[stor9[idx]].field_1536
        if summoner[stor9[idx]].field_1792 > 2:
            revert with 'NH{q', 33
        mem[_38 + 224] = summoner[stor9[idx]].field_1792
        if not summoner[stor9[idx]].field_512:
            revert with 0, 'No summoner for that id'
        if summoner[stor9[idx]].field_512 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _33 = mem[64]
    mem[mem[64]] = s
    if not s:
        _35 = mem[64] + (32 * s) + 32
        mem[64] = mem[64] + (32 * s) + 288
        mem[_35] = 0
        mem[_35 + 32] = 0
        mem[_35 + 64] = 0
        mem[_35 + 96] = 0
        mem[_35 + 128] = 0
        mem[_35 + 160] = 0
        mem[_35 + 192] = 0
        mem[_35 + 224] = 0
        idx = 0
        s = _35
        s = 0
        while idx < stor9.length:
            mem[0] = 9
            _89 = mem[64]
            mem[64] = mem[64] + 256
            mem[_89] = 0
            mem[_89 + 32] = 0
            mem[_89 + 64] = 0
            mem[_89 + 96] = 0
            mem[_89 + 128] = 0
            mem[_89 + 160] = 0
            mem[_89 + 192] = 0
            mem[_89 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _92 = mem[64]
            mem[64] = mem[64] + 256
            mem[_92] = summoner[stor9[idx]].field_0
            mem[_92 + 32] = summoner[stor9[idx]].field_256
            mem[_92 + 64] = summoner[stor9[idx]].field_512
            mem[_92 + 96] = summoner[stor9[idx]].field_768
            mem[_92 + 128] = summoner[stor9[idx]].field_1024
            mem[_92 + 160] = summoner[stor9[idx]].field_1280
            mem[_92 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_92 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor9[idx]].field_512 != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _92
                s = s
                continue 
            if s >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * s) + _33 + 32] = _92
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _92
            s = s + 1
            continue 
        _87 = mem[64]
        mem[mem[64]] = 32
        _90 = mem[_33]
        mem[mem[64] + 32] = mem[_33]
        idx = 0
        s = _33 + 32
        t = mem[64] + 64
        while idx < _90:
            _131 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_131 + 32]
            mem[t + 64] = mem[_131 + 76 len 20]
            mem[t + 96] = mem[_131 + 108 len 20]
            mem[t + 128] = mem[_131 + 144 len 16]
            mem[t + 160] = mem[_131 + 160]
            mem[t + 192] = mem[_131 + 192]
            if mem[_131 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_131 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _87 + (256 * _90) + -mem[64] + 64
    _130 = mem[64] + (32 * s) + 32
    mem[64] = mem[64] + (32 * s) + 288
    mem[_130] = 0
    mem[_130 + 32] = 0
    mem[_130 + 64] = 0
    mem[_130 + 96] = 0
    mem[_130 + 128] = 0
    mem[_130 + 160] = 0
    mem[_130 + 192] = 0
    mem[var31002] = 0
    mem[var33002] = var33001
    if not var33003 - 1:
        mem[64] = _33 + (32 * s) + 544
        mem[_33 + (32 * s) + 288] = 0
        mem[_33 + (32 * s) + 320] = 0
        mem[_33 + (32 * s) + 352] = 0
        mem[_33 + (32 * s) + 384] = 0
        mem[_33 + (32 * s) + 416] = 0
        mem[_33 + (32 * s) + 448] = 0
        mem[_33 + (32 * s) + 480] = 0
        mem[_33 + (32 * s) + 512] = 0
        idx = 0
        t = _33 + (32 * s) + 288
        t = 0
        while idx < stor9.length:
            mem[0] = 9
            _235 = mem[64]
            mem[64] = mem[64] + 256
            mem[_235] = 0
            mem[_235 + 32] = 0
            mem[_235 + 64] = 0
            mem[_235 + 96] = 0
            mem[_235 + 128] = 0
            mem[_235 + 160] = 0
            mem[_235 + 192] = 0
            mem[_235 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _239 = mem[64]
            mem[64] = mem[64] + 256
            mem[_239] = summoner[stor9[idx]].field_0
            mem[_239 + 32] = summoner[stor9[idx]].field_256
            mem[_239 + 64] = summoner[stor9[idx]].field_512
            mem[_239 + 96] = summoner[stor9[idx]].field_768
            mem[_239 + 128] = summoner[stor9[idx]].field_1024
            mem[_239 + 160] = summoner[stor9[idx]].field_1280
            mem[_239 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_239 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor9[idx]].field_512 != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = _239
                t = t
                continue 
            if t >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * t) + _33 + 32] = _239
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = _239
            t = t + 1
            continue 
        _233 = mem[64]
        mem[mem[64]] = 32
        _236 = mem[_33]
        mem[mem[64] + 32] = mem[_33]
        idx = 0
        s = _33 + 32
        t = mem[64] + 64
        while idx < _236:
            _277 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_277 + 32]
            mem[t + 64] = mem[_277 + 76 len 20]
            mem[t + 96] = mem[_277 + 108 len 20]
            mem[t + 128] = mem[_277 + 144 len 16]
            mem[t + 160] = mem[_277 + 160]
            mem[t + 192] = mem[_277 + 192]
            if mem[_277 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_277 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _233 + (256 * _236) + -mem[64] + 64
    mem[_33 + (32 * s) + 288] = 0
    mem[_33 + (32 * s) + 320] = 0
    mem[_33 + (32 * s) + 352] = 0
    mem[_33 + (32 * s) + 384] = 0
    mem[_33 + (32 * s) + 416] = 0
    mem[_33 + (32 * s) + 448] = 0
    mem[_33 + (32 * s) + 480] = 0
    mem[var39002] = 0
    mem[var41002] = var41001
    if not var41003 - 1:
        mem[64] = _33 + (32 * s) + 800
        mem[_33 + (32 * s) + 544] = 0
        mem[_33 + (32 * s) + 576] = 0
        mem[_33 + (32 * s) + 608] = 0
        mem[_33 + (32 * s) + 640] = 0
        mem[_33 + (32 * s) + 672] = 0
        mem[_33 + (32 * s) + 704] = 0
        mem[_33 + (32 * s) + 736] = 0
        mem[_33 + (32 * s) + 768] = 0
        idx = 0
        t = _33 + (32 * s) + 544
        t = 0
        while idx < stor9.length:
            mem[0] = 9
            _381 = mem[64]
            mem[64] = mem[64] + 256
            mem[_381] = 0
            mem[_381 + 32] = 0
            mem[_381 + 64] = 0
            mem[_381 + 96] = 0
            mem[_381 + 128] = 0
            mem[_381 + 160] = 0
            mem[_381 + 192] = 0
            mem[_381 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _385 = mem[64]
            mem[64] = mem[64] + 256
            mem[_385] = summoner[stor9[idx]].field_0
            mem[_385 + 32] = summoner[stor9[idx]].field_256
            mem[_385 + 64] = summoner[stor9[idx]].field_512
            mem[_385 + 96] = summoner[stor9[idx]].field_768
            mem[_385 + 128] = summoner[stor9[idx]].field_1024
            mem[_385 + 160] = summoner[stor9[idx]].field_1280
            mem[_385 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_385 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor9[idx]].field_512 != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = _385
                t = t
                continue 
            if t >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * t) + _33 + 32] = _385
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = _385
            t = t + 1
            continue 
        _379 = mem[64]
        mem[mem[64]] = 32
        _382 = mem[_33]
        mem[mem[64] + 32] = mem[_33]
        idx = 0
        s = _33 + 32
        t = mem[64] + 64
        while idx < _382:
            _423 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_423 + 32]
            mem[t + 64] = mem[_423 + 76 len 20]
            mem[t + 96] = mem[_423 + 108 len 20]
            mem[t + 128] = mem[_423 + 144 len 16]
            mem[t + 160] = mem[_423 + 160]
            mem[t + 192] = mem[_423 + 192]
            if mem[_423 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_423 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _379 + (256 * _382) + -mem[64] + 64
    mem[_33 + (32 * s) + 544] = 0
    mem[_33 + (32 * s) + 576] = 0
    mem[_33 + (32 * s) + 608] = 0
    mem[_33 + (32 * s) + 640] = 0
    mem[_33 + (32 * s) + 672] = 0
    mem[_33 + (32 * s) + 704] = 0
    mem[_33 + (32 * s) + 736] = 0
    mem[var47002] = 0
    mem[var49002] = var49001
    if not var49003 - 1:
        mem[64] = _33 + (32 * s) + 1056
        mem[_33 + (32 * s) + 800] = 0
        mem[_33 + (32 * s) + 832] = 0
        mem[_33 + (32 * s) + 864] = 0
        mem[_33 + (32 * s) + 896] = 0
        mem[_33 + (32 * s) + 928] = 0
        mem[_33 + (32 * s) + 960] = 0
        mem[_33 + (32 * s) + 992] = 0
        mem[_33 + (32 * s) + 1024] = 0
        idx = 0
        t = _33 + (32 * s) + 800
        t = 0
        while idx < stor9.length:
            mem[0] = 9
            _527 = mem[64]
            mem[64] = mem[64] + 256
            mem[_527] = 0
            mem[_527 + 32] = 0
            mem[_527 + 64] = 0
            mem[_527 + 96] = 0
            mem[_527 + 128] = 0
            mem[_527 + 160] = 0
            mem[_527 + 192] = 0
            mem[_527 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _531 = mem[64]
            mem[64] = mem[64] + 256
            mem[_531] = summoner[stor9[idx]].field_0
            mem[_531 + 32] = summoner[stor9[idx]].field_256
            mem[_531 + 64] = summoner[stor9[idx]].field_512
            mem[_531 + 96] = summoner[stor9[idx]].field_768
            mem[_531 + 128] = summoner[stor9[idx]].field_1024
            mem[_531 + 160] = summoner[stor9[idx]].field_1280
            mem[_531 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_531 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor9[idx]].field_512 != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = _531
                t = t
                continue 
            if t >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * t) + _33 + 32] = _531
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = _531
            t = t + 1
            continue 
        _525 = mem[64]
        mem[mem[64]] = 32
        _528 = mem[_33]
        mem[mem[64] + 32] = mem[_33]
        idx = 0
        s = _33 + 32
        t = mem[64] + 64
        while idx < _528:
            _569 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_569 + 32]
            mem[t + 64] = mem[_569 + 76 len 20]
            mem[t + 96] = mem[_569 + 108 len 20]
            mem[t + 128] = mem[_569 + 144 len 16]
            mem[t + 160] = mem[_569 + 160]
            mem[t + 192] = mem[_569 + 192]
            if mem[_569 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_569 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _525 + (256 * _528) + -mem[64] + 64
    mem[_33 + (32 * s) + 800] = 0
    mem[_33 + (32 * s) + 832] = 0
    mem[_33 + (32 * s) + 864] = 0
    mem[_33 + (32 * s) + 896] = 0
    mem[_33 + (32 * s) + 928] = 0
    mem[_33 + (32 * s) + 960] = 0
    mem[_33 + (32 * s) + 992] = 0
    mem[var55002] = 0
    mem[var57002] = var57001
    if var57003 - 1:
        # nil
    else:
        mem[64] = _33 + (32 * s) + 1312
        mem[_33 + (32 * s) + 1056] = 0
        mem[_33 + (32 * s) + 1088] = 0
        mem[_33 + (32 * s) + 1120] = 0
        mem[_33 + (32 * s) + 1152] = 0
        mem[_33 + (32 * s) + 1184] = 0
        mem[_33 + (32 * s) + 1216] = 0
        mem[_33 + (32 * s) + 1248] = 0
        mem[_33 + (32 * s) + 1280] = 0
        idx = 0
        t = _33 + (32 * s) + 1056
        t = 0
        while idx < stor9.length:
            mem[0] = 9
            _673 = mem[64]
            mem[64] = mem[64] + 256
            mem[_673] = 0
            mem[_673 + 32] = 0
            mem[_673 + 64] = 0
            mem[_673 + 96] = 0
            mem[_673 + 128] = 0
            mem[_673 + 160] = 0
            mem[_673 + 192] = 0
            mem[_673 + 224] = 0
            mem[0] = stor9[idx]
            mem[32] = 8
            _677 = mem[64]
            mem[64] = mem[64] + 256
            mem[_677] = summoner[stor9[idx]].field_0
            mem[_677 + 32] = summoner[stor9[idx]].field_256
            mem[_677 + 64] = summoner[stor9[idx]].field_512
            mem[_677 + 96] = summoner[stor9[idx]].field_768
            mem[_677 + 128] = summoner[stor9[idx]].field_1024
            mem[_677 + 160] = summoner[stor9[idx]].field_1280
            mem[_677 + 192] = summoner[stor9[idx]].field_1536
            if summoner[stor9[idx]].field_1792 > 2:
                revert with 'NH{q', 33
            mem[_677 + 224] = summoner[stor9[idx]].field_1792
            if not summoner[stor9[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor9[idx]].field_512 != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = _677
                t = t
                continue 
            if t >= mem[_33]:
                revert with 'NH{q', 50
            mem[(32 * t) + _33 + 32] = _677
            if t == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = _677
            t = t + 1
            continue 
        _671 = mem[64]
        mem[mem[64]] = 32
        _674 = mem[_33]
        mem[mem[64] + 32] = mem[_33]
        idx = 0
        s = _33 + 32
        t = mem[64] + 64
        while idx < _674:
            _715 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_715 + 32]
            mem[t + 64] = mem[_715 + 76 len 20]
            mem[t + 96] = mem[_715 + 108 len 20]
            mem[t + 128] = mem[_715 + 144 len 16]
            mem[t + 160] = mem[_715 + 160]
            mem[t + 192] = mem[_715 + 192]
            if mem[_715 + 224] >= 3:
                revert with 'NH{q', 33
            mem[t + 224] = mem[_715 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _671 + (256 * _674) + -mem[64] + 64
}



}
