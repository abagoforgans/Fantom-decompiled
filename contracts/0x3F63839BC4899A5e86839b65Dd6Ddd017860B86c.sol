contract main {




// =====================  Runtime code  =====================


#
#  - sub_4d3a2b97(?)
#
address owner;
address stor1;
uint256 fee;
uint256 minPrice;
uint256 stor4;
uint256 stor5;
uint8 stor6;
mapping of struct summoner;
array of uint256 stor8;
mapping of uint256 balanceBy;

function getBalanceByAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceBy[address(arg1)]
}

function getMyBalance() {
    return balanceBy[msg.sender]
}

function sub_613a1de4(?) {
    return stor8.length
}

function owner() {
    return owner
}

function getFee() {
    return fee
}

function getMinPrice() {
    return minPrice
}

function getSummoner(uint256 arg1) {
    require calldata.size - 4 >= 32
    if summoner[arg1].field_1536 > 2:
        revert with 0, 33
    if not summoner[arg1].field_512:
        revert with 0, 'No summoner for that id'
    if summoner[arg1].field_1536 >= 3:
        revert with 0, 33
    return summoner[arg1].field_0, 
           summoner[arg1].field_256,
           summoner[arg1].field_512,
           summoner[arg1].field_768,
           summoner[arg1].field_1024,
           summoner[arg1].field_1280,
           summoner[arg1].field_1536
}

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = 1
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
    if not stor6:
        revert with 0, 'Market is already unpaused'
    stor6 = 0
}

function setMinPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minPrice = arg1
    emit MinPriceChanged(arg1);
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 20:
        revert with 0, 'don't be greater than 20%!'
    fee = arg1
    emit FeeChanged(arg1);
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
    if summoner[arg1].field_1536 > 2:
        revert with 0, 33
    require msg.sender == summoner[arg1].field_512
    summoner[arg1].field_512 = summoner[arg1].field_512
    summoner[arg1].field_768 = summoner[arg1].field_768
    summoner[arg1].field_1536 = 1
    if not stor5:
        revert with 0, 17
    stor5--
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, summoner[arg1].field_512, summoner[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Unlisted(arg1);
}

function withdraw() {
    if balanceBy[msg.sender]:
        balanceBy[msg.sender] = 0
        if eth.balance(this.address) < balanceBy[msg.sender]:
            revert with 0, 'Address: insufficient balance'
        call msg.sender with:
           value balanceBy[msg.sender] wei
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

function collectFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4:
        revert with 0, 'No fee left'
    if eth.balance(this.address) < stor4:
        revert with 0, 'Address: insufficient balance'
    call owner with:
       value stor4 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    stor4 = 0
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6:
        revert with 0, 'Market is already paused'
    if summoner[arg1].field_1536 > 2:
        revert with 0, 33
    if summoner[arg1].field_1024 != msg.value:
        revert with 0, 'wrong value'
    if summoner[arg1].field_1536 > 2:
        revert with 0, 33
    if summoner[arg1].field_1536:
        revert with 0, 'summoner not listed'
    summoner[arg1].field_512 = summoner[arg1].field_512
    summoner[arg1].field_768 = msg.sender
    summoner[arg1].field_1536 = 2
    if balanceBy[stor7[arg1].field_512] > !summoner[arg1].field_1280:
        revert with 0, 17
    balanceBy[stor7[arg1].field_512] += summoner[arg1].field_1280
    if not stor5:
        revert with 0, 17
    stor5--
    if summoner[arg1].field_1024 < summoner[arg1].field_1280:
        revert with 0, 17
    if stor4 > !(summoner[arg1].field_1024 - summoner[arg1].field_1280):
        revert with 0, 17
    stor4 = stor4 + summoner[arg1].field_1024 - summoner[arg1].field_1280
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, summoner[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Bought(arg1);
}

function sub_33cac34e(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = 8
        _14 = mem[64]
        mem[64] = mem[64] + 224
        mem[_14] = 0
        mem[_14 + 32] = 0
        mem[_14 + 64] = 0
        mem[_14 + 96] = 0
        mem[_14 + 128] = 0
        mem[_14 + 160] = 0
        mem[_14 + 192] = 0
        mem[0] = stor8[idx]
        mem[32] = 7
        _16 = mem[64]
        mem[64] = mem[64] + 224
        mem[_16] = summoner[stor8[idx]].field_0
        mem[_16 + 32] = summoner[stor8[idx]].field_256
        mem[_16 + 64] = summoner[stor8[idx]].field_512
        mem[_16 + 96] = summoner[stor8[idx]].field_768
        mem[_16 + 128] = summoner[stor8[idx]].field_1024
        mem[_16 + 160] = summoner[stor8[idx]].field_1280
        if summoner[stor8[idx]].field_1536 > 2:
            revert with 0, 33
        mem[_16 + 192] = summoner[stor8[idx]].field_1536
        if not summoner[stor8[idx]].field_512:
            revert with 0, 'No summoner for that id'
        if summoner[stor8[idx]].field_512 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
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
    while idx < stor8.length:
        mem[0] = 8
        _14 = mem[64]
        mem[64] = mem[64] + 224
        mem[_14] = 0
        mem[_14 + 32] = 0
        mem[_14 + 64] = 0
        mem[_14 + 96] = 0
        mem[_14 + 128] = 0
        mem[_14 + 160] = 0
        mem[_14 + 192] = 0
        mem[0] = stor8[idx]
        mem[32] = 7
        _16 = mem[64]
        mem[64] = mem[64] + 224
        mem[_16] = summoner[stor8[idx]].field_0
        mem[_16 + 32] = summoner[stor8[idx]].field_256
        mem[_16 + 64] = summoner[stor8[idx]].field_512
        mem[_16 + 96] = summoner[stor8[idx]].field_768
        mem[_16 + 128] = summoner[stor8[idx]].field_1024
        mem[_16 + 160] = summoner[stor8[idx]].field_1280
        if summoner[stor8[idx]].field_1536 > 2:
            revert with 0, 33
        mem[_16 + 192] = summoner[stor8[idx]].field_1536
        if not summoner[stor8[idx]].field_512:
            revert with 0, 'No summoner for that id'
        if summoner[stor8[idx]].field_512 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function list(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor6:
        revert with 0, 'Market is already paused'
    require ext_code.size(stor1)
    staticcall stor1.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Summoner is not yours'
    if arg2 and fee > -1 / arg2:
        revert with 0, 17
    if arg2 < arg2 * fee / 100:
        revert with 0, 17
    if arg2 < minPrice:
        revert with 0, 'Price too low'
    summoner[arg1][msg.sender][arg2][block.timestamp][block.difficulty].field_0 = sha3(arg1, msg.sender, arg2, block.timestamp, block.difficulty)
    summoner[arg1][msg.sender][arg2][block.timestamp][block.difficulty].field_256 = arg1
    summoner[arg1][msg.sender][arg2][block.timestamp][block.difficulty].field_512 = msg.sender
    summoner[arg1][msg.sender][arg2][block.timestamp][block.difficulty].field_768 = 0
    summoner[arg1][msg.sender][arg2][block.timestamp][block.difficulty].field_1024 = 0
    summoner[arg1][msg.sender][arg2][block.timestamp][block.difficulty].field_1024 = arg2
    summoner[arg1][msg.sender][arg2][block.timestamp][block.difficulty].field_1280 = arg2 - (arg2 * fee / 100)
    summoner[arg1][msg.sender][arg2][block.timestamp][block.difficulty].field_1536 = 0
    summoner[arg1][msg.sender][arg2][block.timestamp][block.difficulty].field_1792 = 0
    stor8.length++
    stor8[stor8.length] = sha3(arg1, msg.sender, arg2, block.timestamp, block.difficulty)
    if stor5 == -1:
        revert with 0, 17
    stor5++
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Listed(sha3(arg1, msg.sender, arg2, block.timestamp, block.difficulty));
}

function sub_4bdad516(?) {
    if stor8.length < 0:
        revert with 0, 17
    if stor8.length > test266151307():
        revert with 0, 65
    mem[96] = stor8.length
    mem[64] = (32 * stor8.length) + 128
    if not stor8.length:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _45 = mem[64]
            mem[64] = mem[64] + 224
            mem[_45] = 0
            mem[_45 + 32] = 0
            mem[_45 + 64] = 0
            mem[_45 + 96] = 0
            mem[_45 + 128] = 0
            mem[_45 + 160] = 0
            mem[_45 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _48 = mem[64]
            mem[64] = mem[64] + 224
            mem[_48] = summoner[stor8[idx]].field_0
            mem[_48 + 32] = summoner[stor8[idx]].field_256
            mem[_48 + 64] = summoner[stor8[idx]].field_512
            mem[_48 + 96] = summoner[stor8[idx]].field_768
            mem[_48 + 128] = summoner[stor8[idx]].field_1024
            mem[_48 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_48 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < 0:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _48
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _43 = mem[64]
        mem[mem[64]] = 32
        _44 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _44:
            _81 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_81 + 32]
            mem[s + 64] = mem[_81 + 76 len 20]
            mem[s + 96] = mem[_81 + 108 len 20]
            mem[s + 128] = mem[_81 + 128]
            mem[s + 160] = mem[_81 + 160]
            if mem[_81 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_81 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _43 + (224 * _44) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 352
    mem[(32 * stor8.length) + 128] = 0
    mem[(32 * stor8.length) + 160] = 0
    mem[(32 * stor8.length) + 192] = 0
    mem[(32 * stor8.length) + 224] = 0
    mem[(32 * stor8.length) + 256] = 0
    mem[(32 * stor8.length) + 288] = 0
    mem[var18002] = 0
    mem[var20002] = var20001
    if not var20003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _173 = mem[64]
            mem[64] = mem[64] + 224
            mem[_173] = 0
            mem[_173 + 32] = 0
            mem[_173 + 64] = 0
            mem[_173 + 96] = 0
            mem[_173 + 128] = 0
            mem[_173 + 160] = 0
            mem[_173 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _176 = mem[64]
            mem[64] = mem[64] + 224
            mem[_176] = summoner[stor8[idx]].field_0
            mem[_176 + 32] = summoner[stor8[idx]].field_256
            mem[_176 + 64] = summoner[stor8[idx]].field_512
            mem[_176 + 96] = summoner[stor8[idx]].field_768
            mem[_176 + 128] = summoner[stor8[idx]].field_1024
            mem[_176 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_176 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < 0:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _176
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _171 = mem[64]
        mem[mem[64]] = 32
        _172 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _172:
            _209 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_209 + 32]
            mem[s + 64] = mem[_209 + 76 len 20]
            mem[s + 96] = mem[_209 + 108 len 20]
            mem[s + 128] = mem[_209 + 128]
            mem[s + 160] = mem[_209 + 160]
            if mem[_209 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_209 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _171 + (224 * _172) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 576
    mem[(32 * stor8.length) + 352] = 0
    mem[(32 * stor8.length) + 384] = 0
    mem[(32 * stor8.length) + 416] = 0
    mem[(32 * stor8.length) + 448] = 0
    mem[(32 * stor8.length) + 480] = 0
    mem[(32 * stor8.length) + 512] = 0
    mem[var26002] = 0
    mem[var28002] = var28001
    if not var28003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _301 = mem[64]
            mem[64] = mem[64] + 224
            mem[_301] = 0
            mem[_301 + 32] = 0
            mem[_301 + 64] = 0
            mem[_301 + 96] = 0
            mem[_301 + 128] = 0
            mem[_301 + 160] = 0
            mem[_301 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _304 = mem[64]
            mem[64] = mem[64] + 224
            mem[_304] = summoner[stor8[idx]].field_0
            mem[_304 + 32] = summoner[stor8[idx]].field_256
            mem[_304 + 64] = summoner[stor8[idx]].field_512
            mem[_304 + 96] = summoner[stor8[idx]].field_768
            mem[_304 + 128] = summoner[stor8[idx]].field_1024
            mem[_304 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_304 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < 0:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _304
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _299 = mem[64]
        mem[mem[64]] = 32
        _300 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _300:
            _337 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_337 + 32]
            mem[s + 64] = mem[_337 + 76 len 20]
            mem[s + 96] = mem[_337 + 108 len 20]
            mem[s + 128] = mem[_337 + 128]
            mem[s + 160] = mem[_337 + 160]
            if mem[_337 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_337 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _299 + (224 * _300) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 800
    mem[(32 * stor8.length) + 576] = 0
    mem[(32 * stor8.length) + 608] = 0
    mem[(32 * stor8.length) + 640] = 0
    mem[(32 * stor8.length) + 672] = 0
    mem[(32 * stor8.length) + 704] = 0
    mem[(32 * stor8.length) + 736] = 0
    mem[var34002] = 0
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _429 = mem[64]
            mem[64] = mem[64] + 224
            mem[_429] = 0
            mem[_429 + 32] = 0
            mem[_429 + 64] = 0
            mem[_429 + 96] = 0
            mem[_429 + 128] = 0
            mem[_429 + 160] = 0
            mem[_429 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _432 = mem[64]
            mem[64] = mem[64] + 224
            mem[_432] = summoner[stor8[idx]].field_0
            mem[_432 + 32] = summoner[stor8[idx]].field_256
            mem[_432 + 64] = summoner[stor8[idx]].field_512
            mem[_432 + 96] = summoner[stor8[idx]].field_768
            mem[_432 + 128] = summoner[stor8[idx]].field_1024
            mem[_432 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_432 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < 0:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _432
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _427 = mem[64]
        mem[mem[64]] = 32
        _428 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _428:
            _465 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_465 + 32]
            mem[s + 64] = mem[_465 + 76 len 20]
            mem[s + 96] = mem[_465 + 108 len 20]
            mem[s + 128] = mem[_465 + 128]
            mem[s + 160] = mem[_465 + 160]
            if mem[_465 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_465 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _427 + (224 * _428) + -mem[64] + 64
    mem[64] = (32 * stor8.length) + 1024
    mem[(32 * stor8.length) + 800] = 0
    mem[(32 * stor8.length) + 832] = 0
    mem[(32 * stor8.length) + 864] = 0
    mem[(32 * stor8.length) + 896] = 0
    mem[(32 * stor8.length) + 928] = 0
    mem[(32 * stor8.length) + 960] = 0
    mem[var42002] = 0
    mem[var44002] = var44001
    if var44003 - 1:
        # nil
    else:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            _557 = mem[64]
            mem[64] = mem[64] + 224
            mem[_557] = 0
            mem[_557 + 32] = 0
            mem[_557 + 64] = 0
            mem[_557 + 96] = 0
            mem[_557 + 128] = 0
            mem[_557 + 160] = 0
            mem[_557 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _560 = mem[64]
            mem[64] = mem[64] + 224
            mem[_560] = summoner[stor8[idx]].field_0
            mem[_560 + 32] = summoner[stor8[idx]].field_256
            mem[_560 + 64] = summoner[stor8[idx]].field_512
            mem[_560 + 96] = summoner[stor8[idx]].field_768
            mem[_560 + 128] = summoner[stor8[idx]].field_1024
            mem[_560 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_560 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < 0:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _560
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _555 = mem[64]
        mem[mem[64]] = 32
        _556 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _556:
            _593 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_593 + 32]
            mem[s + 64] = mem[_593 + 76 len 20]
            mem[s + 96] = mem[_593 + 108 len 20]
            mem[s + 128] = mem[_593 + 128]
            mem[s + 160] = mem[_593 + 160]
            if mem[_593 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_593 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _555 + (224 * _556) + -mem[64] + 64
}

function sub_151fefad(?) {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 > test266151307():
        revert with 0, 65
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = arg1
        while idx < arg2:
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = 8
            _45 = mem[64]
            mem[64] = mem[64] + 224
            mem[_45] = 0
            mem[_45 + 32] = 0
            mem[_45 + 64] = 0
            mem[_45 + 96] = 0
            mem[_45 + 128] = 0
            mem[_45 + 160] = 0
            mem[_45 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _56 = mem[64]
            mem[64] = mem[64] + 224
            mem[_56] = summoner[stor8[idx]].field_0
            mem[_56 + 32] = summoner[stor8[idx]].field_256
            mem[_56 + 64] = summoner[stor8[idx]].field_512
            mem[_56 + 96] = summoner[stor8[idx]].field_768
            mem[_56 + 128] = summoner[stor8[idx]].field_1024
            mem[_56 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_56 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < arg1:
                revert with 0, 17
            if idx - arg1 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - arg1) + 128] = _56
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _44 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _44:
            _81 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_81 + 32]
            mem[s + 64] = mem[_81 + 76 len 20]
            mem[s + 96] = mem[_81 + 108 len 20]
            mem[s + 128] = mem[_81 + 128]
            mem[s + 160] = mem[_81 + 160]
            if mem[_81 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_81 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _42 + (224 * _44) + -mem[64] + 64
    mem[64] = (32 * arg2 - arg1) + 352
    mem[(32 * arg2 - arg1) + 128] = 0
    mem[(32 * arg2 - arg1) + 160] = 0
    mem[(32 * arg2 - arg1) + 192] = 0
    mem[(32 * arg2 - arg1) + 224] = 0
    mem[(32 * arg2 - arg1) + 256] = 0
    mem[(32 * arg2 - arg1) + 288] = 0
    mem[var20002] = 0
    mem[var22002] = var22001
    if not var22003 - 1:
        idx = arg1
        while idx < arg2:
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = 8
            _173 = mem[64]
            mem[64] = mem[64] + 224
            mem[_173] = 0
            mem[_173 + 32] = 0
            mem[_173 + 64] = 0
            mem[_173 + 96] = 0
            mem[_173 + 128] = 0
            mem[_173 + 160] = 0
            mem[_173 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _184 = mem[64]
            mem[64] = mem[64] + 224
            mem[_184] = summoner[stor8[idx]].field_0
            mem[_184 + 32] = summoner[stor8[idx]].field_256
            mem[_184 + 64] = summoner[stor8[idx]].field_512
            mem[_184 + 96] = summoner[stor8[idx]].field_768
            mem[_184 + 128] = summoner[stor8[idx]].field_1024
            mem[_184 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_184 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < arg1:
                revert with 0, 17
            if idx - arg1 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - arg1) + 128] = _184
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _170 = mem[64]
        mem[mem[64]] = 32
        _172 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _172:
            _209 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_209 + 32]
            mem[s + 64] = mem[_209 + 76 len 20]
            mem[s + 96] = mem[_209 + 108 len 20]
            mem[s + 128] = mem[_209 + 128]
            mem[s + 160] = mem[_209 + 160]
            if mem[_209 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_209 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _170 + (224 * _172) + -mem[64] + 64
    mem[64] = (32 * arg2 - arg1) + 576
    mem[(32 * arg2 - arg1) + 352] = 0
    mem[(32 * arg2 - arg1) + 384] = 0
    mem[(32 * arg2 - arg1) + 416] = 0
    mem[(32 * arg2 - arg1) + 448] = 0
    mem[(32 * arg2 - arg1) + 480] = 0
    mem[(32 * arg2 - arg1) + 512] = 0
    mem[var28002] = 0
    mem[var30002] = var30001
    if not var30003 - 1:
        idx = arg1
        while idx < arg2:
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = 8
            _301 = mem[64]
            mem[64] = mem[64] + 224
            mem[_301] = 0
            mem[_301 + 32] = 0
            mem[_301 + 64] = 0
            mem[_301 + 96] = 0
            mem[_301 + 128] = 0
            mem[_301 + 160] = 0
            mem[_301 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _312 = mem[64]
            mem[64] = mem[64] + 224
            mem[_312] = summoner[stor8[idx]].field_0
            mem[_312 + 32] = summoner[stor8[idx]].field_256
            mem[_312 + 64] = summoner[stor8[idx]].field_512
            mem[_312 + 96] = summoner[stor8[idx]].field_768
            mem[_312 + 128] = summoner[stor8[idx]].field_1024
            mem[_312 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_312 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < arg1:
                revert with 0, 17
            if idx - arg1 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - arg1) + 128] = _312
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _298 = mem[64]
        mem[mem[64]] = 32
        _300 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _300:
            _337 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_337 + 32]
            mem[s + 64] = mem[_337 + 76 len 20]
            mem[s + 96] = mem[_337 + 108 len 20]
            mem[s + 128] = mem[_337 + 128]
            mem[s + 160] = mem[_337 + 160]
            if mem[_337 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_337 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _298 + (224 * _300) + -mem[64] + 64
    mem[64] = (32 * arg2 - arg1) + 800
    mem[(32 * arg2 - arg1) + 576] = 0
    mem[(32 * arg2 - arg1) + 608] = 0
    mem[(32 * arg2 - arg1) + 640] = 0
    mem[(32 * arg2 - arg1) + 672] = 0
    mem[(32 * arg2 - arg1) + 704] = 0
    mem[(32 * arg2 - arg1) + 736] = 0
    mem[var36002] = 0
    mem[var38002] = var38001
    if not var38003 - 1:
        idx = arg1
        while idx < arg2:
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = 8
            _429 = mem[64]
            mem[64] = mem[64] + 224
            mem[_429] = 0
            mem[_429 + 32] = 0
            mem[_429 + 64] = 0
            mem[_429 + 96] = 0
            mem[_429 + 128] = 0
            mem[_429 + 160] = 0
            mem[_429 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _440 = mem[64]
            mem[64] = mem[64] + 224
            mem[_440] = summoner[stor8[idx]].field_0
            mem[_440 + 32] = summoner[stor8[idx]].field_256
            mem[_440 + 64] = summoner[stor8[idx]].field_512
            mem[_440 + 96] = summoner[stor8[idx]].field_768
            mem[_440 + 128] = summoner[stor8[idx]].field_1024
            mem[_440 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_440 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < arg1:
                revert with 0, 17
            if idx - arg1 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - arg1) + 128] = _440
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _426 = mem[64]
        mem[mem[64]] = 32
        _428 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _428:
            _465 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_465 + 32]
            mem[s + 64] = mem[_465 + 76 len 20]
            mem[s + 96] = mem[_465 + 108 len 20]
            mem[s + 128] = mem[_465 + 128]
            mem[s + 160] = mem[_465 + 160]
            if mem[_465 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_465 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _426 + (224 * _428) + -mem[64] + 64
    mem[64] = (32 * arg2 - arg1) + 1024
    mem[(32 * arg2 - arg1) + 800] = 0
    mem[(32 * arg2 - arg1) + 832] = 0
    mem[(32 * arg2 - arg1) + 864] = 0
    mem[(32 * arg2 - arg1) + 896] = 0
    mem[(32 * arg2 - arg1) + 928] = 0
    mem[(32 * arg2 - arg1) + 960] = 0
    mem[var44002] = 0
    mem[var46002] = var46001
    if var46003 - 1:
        # nil
    else:
        idx = arg1
        while idx < arg2:
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = 8
            _557 = mem[64]
            mem[64] = mem[64] + 224
            mem[_557] = 0
            mem[_557 + 32] = 0
            mem[_557 + 64] = 0
            mem[_557 + 96] = 0
            mem[_557 + 128] = 0
            mem[_557 + 160] = 0
            mem[_557 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _568 = mem[64]
            mem[64] = mem[64] + 224
            mem[_568] = summoner[stor8[idx]].field_0
            mem[_568 + 32] = summoner[stor8[idx]].field_256
            mem[_568 + 64] = summoner[stor8[idx]].field_512
            mem[_568 + 96] = summoner[stor8[idx]].field_768
            mem[_568 + 128] = summoner[stor8[idx]].field_1024
            mem[_568 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_568 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if idx < arg1:
                revert with 0, 17
            if idx - arg1 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - arg1) + 128] = _568
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _554 = mem[64]
        mem[mem[64]] = 32
        _556 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _556:
            _593 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_593 + 32]
            mem[s + 64] = mem[_593 + 76 len 20]
            mem[s + 96] = mem[_593 + 108 len 20]
            mem[s + 128] = mem[_593 + 128]
            mem[s + 160] = mem[_593 + 160]
            if mem[_593 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_593 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _554 + (224 * _556) + -mem[64] + 64
}

function sub_197f4efa(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = 8
        _33 = mem[64]
        mem[64] = mem[64] + 224
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[_33 + 64] = 0
        mem[_33 + 96] = 0
        mem[_33 + 128] = 0
        mem[_33 + 160] = 0
        mem[_33 + 192] = 0
        mem[0] = stor8[idx]
        mem[32] = 7
        _37 = mem[64]
        mem[64] = mem[64] + 224
        mem[_37] = summoner[stor8[idx]].field_0
        mem[_37 + 32] = summoner[stor8[idx]].field_256
        mem[_37 + 64] = summoner[stor8[idx]].field_512
        mem[_37 + 96] = summoner[stor8[idx]].field_768
        mem[_37 + 128] = summoner[stor8[idx]].field_1024
        mem[_37 + 160] = summoner[stor8[idx]].field_1280
        if summoner[stor8[idx]].field_1536 > 2:
            revert with 0, 33
        mem[_37 + 192] = summoner[stor8[idx]].field_1536
        if not summoner[stor8[idx]].field_512:
            revert with 0, 'No summoner for that id'
        if summoner[stor8[idx]].field_512 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _32 = mem[64]
    mem[mem[64]] = s
    if not s:
        _34 = mem[64] + (32 * s) + 32
        mem[64] = mem[64] + (32 * s) + 256
        mem[_34] = 0
        mem[_34 + 32] = 0
        mem[_34 + 64] = 0
        mem[_34 + 96] = 0
        mem[_34 + 128] = 0
        mem[_34 + 160] = 0
        mem[_34 + 192] = 0
        idx = 0
        s = _34
        s = 0
        while idx < stor8.length:
            mem[0] = 8
            _87 = mem[64]
            mem[64] = mem[64] + 224
            mem[_87] = 0
            mem[_87 + 32] = 0
            mem[_87 + 64] = 0
            mem[_87 + 96] = 0
            mem[_87 + 128] = 0
            mem[_87 + 160] = 0
            mem[_87 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _90 = mem[64]
            mem[64] = mem[64] + 224
            mem[_90] = summoner[stor8[idx]].field_0
            mem[_90 + 32] = summoner[stor8[idx]].field_256
            mem[_90 + 64] = summoner[stor8[idx]].field_512
            mem[_90 + 96] = summoner[stor8[idx]].field_768
            mem[_90 + 128] = summoner[stor8[idx]].field_1024
            mem[_90 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_90 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor8[idx]].field_512 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _90
                s = s
                continue 
            if s >= mem[_32]:
                revert with 0, 50
            mem[(32 * s) + _32 + 32] = _90
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _90
            s = s + 1
            continue 
        _85 = mem[64]
        mem[mem[64]] = 32
        _86 = mem[_32]
        mem[mem[64] + 32] = mem[_32]
        idx = 0
        s = mem[64] + 64
        t = _32 + 32
        while idx < _86:
            _126 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_126 + 32]
            mem[s + 64] = mem[_126 + 76 len 20]
            mem[s + 96] = mem[_126 + 108 len 20]
            mem[s + 128] = mem[_126 + 128]
            mem[s + 160] = mem[_126 + 160]
            if mem[_126 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_126 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _85 + (224 * _86) + -mem[64] + 64
    _125 = mem[64] + (32 * s) + 32
    mem[64] = mem[64] + (32 * s) + 256
    mem[_125] = 0
    mem[_125 + 32] = 0
    mem[_125 + 64] = 0
    mem[_125 + 96] = 0
    mem[_125 + 128] = 0
    mem[_125 + 160] = 0
    mem[var20002] = 0
    mem[var22002] = var22001
    if not var22003 - 1:
        mem[64] = _32 + (32 * s) + 480
        mem[_32 + (32 * s) + 256] = 0
        mem[_32 + (32 * s) + 288] = 0
        mem[_32 + (32 * s) + 320] = 0
        mem[_32 + (32 * s) + 352] = 0
        mem[_32 + (32 * s) + 384] = 0
        mem[_32 + (32 * s) + 416] = 0
        mem[_32 + (32 * s) + 448] = 0
        idx = 0
        t = _32 + (32 * s) + 256
        t = 0
        while idx < stor8.length:
            mem[0] = 8
            _226 = mem[64]
            mem[64] = mem[64] + 224
            mem[_226] = 0
            mem[_226 + 32] = 0
            mem[_226 + 64] = 0
            mem[_226 + 96] = 0
            mem[_226 + 128] = 0
            mem[_226 + 160] = 0
            mem[_226 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _230 = mem[64]
            mem[64] = mem[64] + 224
            mem[_230] = summoner[stor8[idx]].field_0
            mem[_230 + 32] = summoner[stor8[idx]].field_256
            mem[_230 + 64] = summoner[stor8[idx]].field_512
            mem[_230 + 96] = summoner[stor8[idx]].field_768
            mem[_230 + 128] = summoner[stor8[idx]].field_1024
            mem[_230 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_230 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor8[idx]].field_512 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _230
                t = t
                continue 
            if t >= mem[_32]:
                revert with 0, 50
            mem[(32 * t) + _32 + 32] = _230
            if t == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _230
            t = t + 1
            continue 
        _224 = mem[64]
        mem[mem[64]] = 32
        _225 = mem[_32]
        mem[mem[64] + 32] = mem[_32]
        idx = 0
        s = mem[64] + 64
        t = _32 + 32
        while idx < _225:
            _265 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_265 + 32]
            mem[s + 64] = mem[_265 + 76 len 20]
            mem[s + 96] = mem[_265 + 108 len 20]
            mem[s + 128] = mem[_265 + 128]
            mem[s + 160] = mem[_265 + 160]
            if mem[_265 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_265 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _224 + (224 * _225) + -mem[64] + 64
    mem[_32 + (32 * s) + 256] = 0
    mem[_32 + (32 * s) + 288] = 0
    mem[_32 + (32 * s) + 320] = 0
    mem[_32 + (32 * s) + 352] = 0
    mem[_32 + (32 * s) + 384] = 0
    mem[_32 + (32 * s) + 416] = 0
    mem[var28002] = 0
    mem[var30002] = var30001
    if not var30003 - 1:
        mem[64] = _32 + (32 * s) + 704
        mem[_32 + (32 * s) + 480] = 0
        mem[_32 + (32 * s) + 512] = 0
        mem[_32 + (32 * s) + 544] = 0
        mem[_32 + (32 * s) + 576] = 0
        mem[_32 + (32 * s) + 608] = 0
        mem[_32 + (32 * s) + 640] = 0
        mem[_32 + (32 * s) + 672] = 0
        idx = 0
        t = _32 + (32 * s) + 480
        t = 0
        while idx < stor8.length:
            mem[0] = 8
            _365 = mem[64]
            mem[64] = mem[64] + 224
            mem[_365] = 0
            mem[_365 + 32] = 0
            mem[_365 + 64] = 0
            mem[_365 + 96] = 0
            mem[_365 + 128] = 0
            mem[_365 + 160] = 0
            mem[_365 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _369 = mem[64]
            mem[64] = mem[64] + 224
            mem[_369] = summoner[stor8[idx]].field_0
            mem[_369 + 32] = summoner[stor8[idx]].field_256
            mem[_369 + 64] = summoner[stor8[idx]].field_512
            mem[_369 + 96] = summoner[stor8[idx]].field_768
            mem[_369 + 128] = summoner[stor8[idx]].field_1024
            mem[_369 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_369 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor8[idx]].field_512 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _369
                t = t
                continue 
            if t >= mem[_32]:
                revert with 0, 50
            mem[(32 * t) + _32 + 32] = _369
            if t == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _369
            t = t + 1
            continue 
        _363 = mem[64]
        mem[mem[64]] = 32
        _364 = mem[_32]
        mem[mem[64] + 32] = mem[_32]
        idx = 0
        s = mem[64] + 64
        t = _32 + 32
        while idx < _364:
            _404 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_404 + 32]
            mem[s + 64] = mem[_404 + 76 len 20]
            mem[s + 96] = mem[_404 + 108 len 20]
            mem[s + 128] = mem[_404 + 128]
            mem[s + 160] = mem[_404 + 160]
            if mem[_404 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_404 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _363 + (224 * _364) + -mem[64] + 64
    mem[_32 + (32 * s) + 480] = 0
    mem[_32 + (32 * s) + 512] = 0
    mem[_32 + (32 * s) + 544] = 0
    mem[_32 + (32 * s) + 576] = 0
    mem[_32 + (32 * s) + 608] = 0
    mem[_32 + (32 * s) + 640] = 0
    mem[var36002] = 0
    mem[var38002] = var38001
    if not var38003 - 1:
        mem[64] = _32 + (32 * s) + 928
        mem[_32 + (32 * s) + 704] = 0
        mem[_32 + (32 * s) + 736] = 0
        mem[_32 + (32 * s) + 768] = 0
        mem[_32 + (32 * s) + 800] = 0
        mem[_32 + (32 * s) + 832] = 0
        mem[_32 + (32 * s) + 864] = 0
        mem[_32 + (32 * s) + 896] = 0
        idx = 0
        t = _32 + (32 * s) + 704
        t = 0
        while idx < stor8.length:
            mem[0] = 8
            _504 = mem[64]
            mem[64] = mem[64] + 224
            mem[_504] = 0
            mem[_504 + 32] = 0
            mem[_504 + 64] = 0
            mem[_504 + 96] = 0
            mem[_504 + 128] = 0
            mem[_504 + 160] = 0
            mem[_504 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _508 = mem[64]
            mem[64] = mem[64] + 224
            mem[_508] = summoner[stor8[idx]].field_0
            mem[_508 + 32] = summoner[stor8[idx]].field_256
            mem[_508 + 64] = summoner[stor8[idx]].field_512
            mem[_508 + 96] = summoner[stor8[idx]].field_768
            mem[_508 + 128] = summoner[stor8[idx]].field_1024
            mem[_508 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_508 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor8[idx]].field_512 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _508
                t = t
                continue 
            if t >= mem[_32]:
                revert with 0, 50
            mem[(32 * t) + _32 + 32] = _508
            if t == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _508
            t = t + 1
            continue 
        _502 = mem[64]
        mem[mem[64]] = 32
        _503 = mem[_32]
        mem[mem[64] + 32] = mem[_32]
        idx = 0
        s = mem[64] + 64
        t = _32 + 32
        while idx < _503:
            _543 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_543 + 32]
            mem[s + 64] = mem[_543 + 76 len 20]
            mem[s + 96] = mem[_543 + 108 len 20]
            mem[s + 128] = mem[_543 + 128]
            mem[s + 160] = mem[_543 + 160]
            if mem[_543 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_543 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _502 + (224 * _503) + -mem[64] + 64
    mem[_32 + (32 * s) + 704] = 0
    mem[_32 + (32 * s) + 736] = 0
    mem[_32 + (32 * s) + 768] = 0
    mem[_32 + (32 * s) + 800] = 0
    mem[_32 + (32 * s) + 832] = 0
    mem[_32 + (32 * s) + 864] = 0
    mem[var44002] = 0
    mem[var46002] = var46001
    if var46003 - 1:
        # nil
    else:
        mem[64] = _32 + (32 * s) + 1152
        mem[_32 + (32 * s) + 928] = 0
        mem[_32 + (32 * s) + 960] = 0
        mem[_32 + (32 * s) + 992] = 0
        mem[_32 + (32 * s) + 1024] = 0
        mem[_32 + (32 * s) + 1056] = 0
        mem[_32 + (32 * s) + 1088] = 0
        mem[_32 + (32 * s) + 1120] = 0
        idx = 0
        t = _32 + (32 * s) + 928
        t = 0
        while idx < stor8.length:
            mem[0] = 8
            _643 = mem[64]
            mem[64] = mem[64] + 224
            mem[_643] = 0
            mem[_643 + 32] = 0
            mem[_643 + 64] = 0
            mem[_643 + 96] = 0
            mem[_643 + 128] = 0
            mem[_643 + 160] = 0
            mem[_643 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _647 = mem[64]
            mem[64] = mem[64] + 224
            mem[_647] = summoner[stor8[idx]].field_0
            mem[_647 + 32] = summoner[stor8[idx]].field_256
            mem[_647 + 64] = summoner[stor8[idx]].field_512
            mem[_647 + 96] = summoner[stor8[idx]].field_768
            mem[_647 + 128] = summoner[stor8[idx]].field_1024
            mem[_647 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_647 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor8[idx]].field_512 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _647
                t = t
                continue 
            if t >= mem[_32]:
                revert with 0, 50
            mem[(32 * t) + _32 + 32] = _647
            if t == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _647
            t = t + 1
            continue 
        _641 = mem[64]
        mem[mem[64]] = 32
        _642 = mem[_32]
        mem[mem[64] + 32] = mem[_32]
        idx = 0
        s = mem[64] + 64
        t = _32 + 32
        while idx < _642:
            _682 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_682 + 32]
            mem[s + 64] = mem[_682 + 76 len 20]
            mem[s + 96] = mem[_682 + 108 len 20]
            mem[s + 128] = mem[_682 + 128]
            mem[s + 160] = mem[_682 + 160]
            if mem[_682 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_682 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _641 + (224 * _642) + -mem[64] + 64
}

function sub_a98d9588(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = 8
        _33 = mem[64]
        mem[64] = mem[64] + 224
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[_33 + 64] = 0
        mem[_33 + 96] = 0
        mem[_33 + 128] = 0
        mem[_33 + 160] = 0
        mem[_33 + 192] = 0
        mem[0] = stor8[idx]
        mem[32] = 7
        _37 = mem[64]
        mem[64] = mem[64] + 224
        mem[_37] = summoner[stor8[idx]].field_0
        mem[_37 + 32] = summoner[stor8[idx]].field_256
        mem[_37 + 64] = summoner[stor8[idx]].field_512
        mem[_37 + 96] = summoner[stor8[idx]].field_768
        mem[_37 + 128] = summoner[stor8[idx]].field_1024
        mem[_37 + 160] = summoner[stor8[idx]].field_1280
        if summoner[stor8[idx]].field_1536 > 2:
            revert with 0, 33
        mem[_37 + 192] = summoner[stor8[idx]].field_1536
        if not summoner[stor8[idx]].field_512:
            revert with 0, 'No summoner for that id'
        if summoner[stor8[idx]].field_512 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _32 = mem[64]
    mem[mem[64]] = s
    if not s:
        _34 = mem[64] + (32 * s) + 32
        mem[64] = mem[64] + (32 * s) + 256
        mem[_34] = 0
        mem[_34 + 32] = 0
        mem[_34 + 64] = 0
        mem[_34 + 96] = 0
        mem[_34 + 128] = 0
        mem[_34 + 160] = 0
        mem[_34 + 192] = 0
        s = 0
        t = _34
        t = 0
        while s < stor8.length:
            mem[0] = 8
            _87 = mem[64]
            mem[64] = mem[64] + 224
            mem[_87] = 0
            mem[_87 + 32] = 0
            mem[_87 + 64] = 0
            mem[_87 + 96] = 0
            mem[_87 + 128] = 0
            mem[_87 + 160] = 0
            mem[_87 + 192] = 0
            mem[0] = stor8[s]
            mem[32] = 7
            _98 = mem[64]
            mem[64] = mem[64] + 224
            mem[_98] = summoner[stor8[s]].field_0
            mem[_98 + 32] = summoner[stor8[s]].field_256
            mem[_98 + 64] = summoner[stor8[s]].field_512
            mem[_98 + 96] = summoner[stor8[s]].field_768
            mem[_98 + 128] = summoner[stor8[s]].field_1024
            mem[_98 + 160] = summoner[stor8[s]].field_1280
            if summoner[stor8[s]].field_1536 > 2:
                revert with 0, 33
            mem[_98 + 192] = summoner[stor8[s]].field_1536
            if not summoner[stor8[s]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor8[s]].field_512 != address(arg1):
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = _98
                t = t
                continue 
            if t >= mem[_32]:
                revert with 0, 50
            mem[(32 * t) + _32 + 32] = _98
            if t == -1:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = _98
            t = t + 1
            continue 
        _84 = mem[64]
        mem[mem[64]] = 32
        _86 = mem[_32]
        mem[mem[64] + 32] = mem[_32]
        s = 0
        t = mem[64] + 64
        u = _32 + 32
        while s < _86:
            _126 = mem[u]
            mem[t] = mem[mem[u]]
            mem[t + 32] = mem[_126 + 32]
            mem[t + 64] = mem[_126 + 76 len 20]
            mem[t + 96] = mem[_126 + 108 len 20]
            mem[t + 128] = mem[_126 + 128]
            mem[t + 160] = mem[_126 + 160]
            if mem[_126 + 192] >= 3:
                revert with 0, 33
            mem[t + 192] = mem[_126 + 192]
            s = s + 1
            t = t + 224
            u = u + 32
            continue 
        return memory
          from mem[64]
           len _84 + (224 * _86) + -mem[64] + 64
    _125 = mem[64] + (32 * s) + 32
    mem[64] = mem[64] + (32 * s) + 256
    mem[_125] = 0
    mem[_125 + 32] = 0
    mem[_125 + 64] = 0
    mem[_125 + 96] = 0
    mem[_125 + 128] = 0
    mem[_125 + 160] = 0
    mem[var25002] = 0
    mem[var27002] = var27001
    if not var27003 - 1:
        mem[64] = _32 + (32 * s) + 480
        mem[_32 + (32 * s) + 256] = 0
        mem[_32 + (32 * s) + 288] = 0
        mem[_32 + (32 * s) + 320] = 0
        mem[_32 + (32 * s) + 352] = 0
        mem[_32 + (32 * s) + 384] = 0
        mem[_32 + (32 * s) + 416] = 0
        mem[_32 + (32 * s) + 448] = 0
        idx = 0
        t = _32 + (32 * s) + 256
        t = 0
        while idx < stor8.length:
            mem[0] = 8
            _226 = mem[64]
            mem[64] = mem[64] + 224
            mem[_226] = 0
            mem[_226 + 32] = 0
            mem[_226 + 64] = 0
            mem[_226 + 96] = 0
            mem[_226 + 128] = 0
            mem[_226 + 160] = 0
            mem[_226 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _238 = mem[64]
            mem[64] = mem[64] + 224
            mem[_238] = summoner[stor8[idx]].field_0
            mem[_238 + 32] = summoner[stor8[idx]].field_256
            mem[_238 + 64] = summoner[stor8[idx]].field_512
            mem[_238 + 96] = summoner[stor8[idx]].field_768
            mem[_238 + 128] = summoner[stor8[idx]].field_1024
            mem[_238 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_238 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor8[idx]].field_512 != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _238
                t = t
                continue 
            if t >= mem[_32]:
                revert with 0, 50
            mem[(32 * t) + _32 + 32] = _238
            if t == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _238
            t = t + 1
            continue 
        _223 = mem[64]
        mem[mem[64]] = 32
        _225 = mem[_32]
        mem[mem[64] + 32] = mem[_32]
        idx = 0
        s = mem[64] + 64
        t = _32 + 32
        while idx < _225:
            _265 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_265 + 32]
            mem[s + 64] = mem[_265 + 76 len 20]
            mem[s + 96] = mem[_265 + 108 len 20]
            mem[s + 128] = mem[_265 + 128]
            mem[s + 160] = mem[_265 + 160]
            if mem[_265 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_265 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _223 + (224 * _225) + -mem[64] + 64
    mem[_32 + (32 * s) + 256] = 0
    mem[_32 + (32 * s) + 288] = 0
    mem[_32 + (32 * s) + 320] = 0
    mem[_32 + (32 * s) + 352] = 0
    mem[_32 + (32 * s) + 384] = 0
    mem[_32 + (32 * s) + 416] = 0
    mem[var33002] = 0
    mem[var35002] = var35001
    if not var35003 - 1:
        mem[64] = _32 + (32 * s) + 704
        mem[_32 + (32 * s) + 480] = 0
        mem[_32 + (32 * s) + 512] = 0
        mem[_32 + (32 * s) + 544] = 0
        mem[_32 + (32 * s) + 576] = 0
        mem[_32 + (32 * s) + 608] = 0
        mem[_32 + (32 * s) + 640] = 0
        mem[_32 + (32 * s) + 672] = 0
        idx = 0
        t = _32 + (32 * s) + 480
        t = 0
        while idx < stor8.length:
            mem[0] = 8
            _365 = mem[64]
            mem[64] = mem[64] + 224
            mem[_365] = 0
            mem[_365 + 32] = 0
            mem[_365 + 64] = 0
            mem[_365 + 96] = 0
            mem[_365 + 128] = 0
            mem[_365 + 160] = 0
            mem[_365 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _377 = mem[64]
            mem[64] = mem[64] + 224
            mem[_377] = summoner[stor8[idx]].field_0
            mem[_377 + 32] = summoner[stor8[idx]].field_256
            mem[_377 + 64] = summoner[stor8[idx]].field_512
            mem[_377 + 96] = summoner[stor8[idx]].field_768
            mem[_377 + 128] = summoner[stor8[idx]].field_1024
            mem[_377 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_377 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor8[idx]].field_512 != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _377
                t = t
                continue 
            if t >= mem[_32]:
                revert with 0, 50
            mem[(32 * t) + _32 + 32] = _377
            if t == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _377
            t = t + 1
            continue 
        _362 = mem[64]
        mem[mem[64]] = 32
        _364 = mem[_32]
        mem[mem[64] + 32] = mem[_32]
        idx = 0
        s = mem[64] + 64
        t = _32 + 32
        while idx < _364:
            _404 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_404 + 32]
            mem[s + 64] = mem[_404 + 76 len 20]
            mem[s + 96] = mem[_404 + 108 len 20]
            mem[s + 128] = mem[_404 + 128]
            mem[s + 160] = mem[_404 + 160]
            if mem[_404 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_404 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _362 + (224 * _364) + -mem[64] + 64
    mem[_32 + (32 * s) + 480] = 0
    mem[_32 + (32 * s) + 512] = 0
    mem[_32 + (32 * s) + 544] = 0
    mem[_32 + (32 * s) + 576] = 0
    mem[_32 + (32 * s) + 608] = 0
    mem[_32 + (32 * s) + 640] = 0
    mem[var41002] = 0
    mem[var43002] = var43001
    if not var43003 - 1:
        mem[64] = _32 + (32 * s) + 928
        mem[_32 + (32 * s) + 704] = 0
        mem[_32 + (32 * s) + 736] = 0
        mem[_32 + (32 * s) + 768] = 0
        mem[_32 + (32 * s) + 800] = 0
        mem[_32 + (32 * s) + 832] = 0
        mem[_32 + (32 * s) + 864] = 0
        mem[_32 + (32 * s) + 896] = 0
        idx = 0
        t = _32 + (32 * s) + 704
        t = 0
        while idx < stor8.length:
            mem[0] = 8
            _504 = mem[64]
            mem[64] = mem[64] + 224
            mem[_504] = 0
            mem[_504 + 32] = 0
            mem[_504 + 64] = 0
            mem[_504 + 96] = 0
            mem[_504 + 128] = 0
            mem[_504 + 160] = 0
            mem[_504 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _516 = mem[64]
            mem[64] = mem[64] + 224
            mem[_516] = summoner[stor8[idx]].field_0
            mem[_516 + 32] = summoner[stor8[idx]].field_256
            mem[_516 + 64] = summoner[stor8[idx]].field_512
            mem[_516 + 96] = summoner[stor8[idx]].field_768
            mem[_516 + 128] = summoner[stor8[idx]].field_1024
            mem[_516 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_516 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor8[idx]].field_512 != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _516
                t = t
                continue 
            if t >= mem[_32]:
                revert with 0, 50
            mem[(32 * t) + _32 + 32] = _516
            if t == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _516
            t = t + 1
            continue 
        _501 = mem[64]
        mem[mem[64]] = 32
        _503 = mem[_32]
        mem[mem[64] + 32] = mem[_32]
        idx = 0
        s = mem[64] + 64
        t = _32 + 32
        while idx < _503:
            _543 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_543 + 32]
            mem[s + 64] = mem[_543 + 76 len 20]
            mem[s + 96] = mem[_543 + 108 len 20]
            mem[s + 128] = mem[_543 + 128]
            mem[s + 160] = mem[_543 + 160]
            if mem[_543 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_543 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _501 + (224 * _503) + -mem[64] + 64
    mem[_32 + (32 * s) + 704] = 0
    mem[_32 + (32 * s) + 736] = 0
    mem[_32 + (32 * s) + 768] = 0
    mem[_32 + (32 * s) + 800] = 0
    mem[_32 + (32 * s) + 832] = 0
    mem[_32 + (32 * s) + 864] = 0
    mem[var49002] = 0
    mem[var51002] = var51001
    if var51003 - 1:
        # nil
    else:
        mem[64] = _32 + (32 * s) + 1152
        mem[_32 + (32 * s) + 928] = 0
        mem[_32 + (32 * s) + 960] = 0
        mem[_32 + (32 * s) + 992] = 0
        mem[_32 + (32 * s) + 1024] = 0
        mem[_32 + (32 * s) + 1056] = 0
        mem[_32 + (32 * s) + 1088] = 0
        mem[_32 + (32 * s) + 1120] = 0
        idx = 0
        t = _32 + (32 * s) + 928
        t = 0
        while idx < stor8.length:
            mem[0] = 8
            _643 = mem[64]
            mem[64] = mem[64] + 224
            mem[_643] = 0
            mem[_643 + 32] = 0
            mem[_643 + 64] = 0
            mem[_643 + 96] = 0
            mem[_643 + 128] = 0
            mem[_643 + 160] = 0
            mem[_643 + 192] = 0
            mem[0] = stor8[idx]
            mem[32] = 7
            _655 = mem[64]
            mem[64] = mem[64] + 224
            mem[_655] = summoner[stor8[idx]].field_0
            mem[_655 + 32] = summoner[stor8[idx]].field_256
            mem[_655 + 64] = summoner[stor8[idx]].field_512
            mem[_655 + 96] = summoner[stor8[idx]].field_768
            mem[_655 + 128] = summoner[stor8[idx]].field_1024
            mem[_655 + 160] = summoner[stor8[idx]].field_1280
            if summoner[stor8[idx]].field_1536 > 2:
                revert with 0, 33
            mem[_655 + 192] = summoner[stor8[idx]].field_1536
            if not summoner[stor8[idx]].field_512:
                revert with 0, 'No summoner for that id'
            if summoner[stor8[idx]].field_512 != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _655
                t = t
                continue 
            if t >= mem[_32]:
                revert with 0, 50
            mem[(32 * t) + _32 + 32] = _655
            if t == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _655
            t = t + 1
            continue 
        _640 = mem[64]
        mem[mem[64]] = 32
        _642 = mem[_32]
        mem[mem[64] + 32] = mem[_32]
        idx = 0
        s = mem[64] + 64
        t = _32 + 32
        while idx < _642:
            _682 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_682 + 32]
            mem[s + 64] = mem[_682 + 76 len 20]
            mem[s + 96] = mem[_682 + 108 len 20]
            mem[s + 128] = mem[_682 + 128]
            mem[s + 160] = mem[_682 + 160]
            if mem[_682 + 192] >= 3:
                revert with 0, 33
            mem[s + 192] = mem[_682 + 192]
            idx = idx + 1
            s = s + 224
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _640 + (224 * _642) + -mem[64] + 64
}



}
