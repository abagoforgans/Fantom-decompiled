contract main {




// =====================  Runtime code  =====================


const sub_76816091(?) = 1000

const sub_f5dd34b9(?) = 1000

const FIELD_SIZE = 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000

const ROOT_HISTORY_SIZE = 100

const ZERO_VALUE = 0x2fe54c60d3acabf3343a35b6eba15db4821b340f76e741e2249685ed4899af6c


uint32 levels;
array of uint256 filledSubtrees;
array of uint256 zeros;
uint32 currentRootIndex;
uint32 nextIndex; offset 32
array of uint256 lastRoot;
uint256 stor103;
uint8 stor104;
uint256 stor105; offset 32
uint256 denomination;
mapping of uint8 stor106;
mapping of uint8 stor107;
address verifierAddress;
uint256 taxPercent;
array of struct sub_301b18de;
uint256 totalAllocPoint;
address operatorAddress;
address tokenAddress;
array of address stor69290179047559764897525587595065000388900846244344453231461793201804346332202;
array of uint256 stor69290179047559764897525587595065000388900846244344453231461793201804346332203;

function totalAllocPoint() {
    return totalAllocPoint
}

function nullifierHashes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor106[arg1])
}

function verifier() {
    return verifierAddress
}

function sub_301b18de(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_301b18de.length
    return sub_301b18de[arg1].field_0, sub_301b18de[arg1].field_256
}

function levels() {
    return levels
}

function operator() {
    return operatorAddress
}

function taxPercent() {
    return taxPercent
}

function commitments(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor107[arg1])
}

function denomination() {
    return denomination
}

function currentRootIndex() {
    return currentRootIndex
}

function getLastRoot() {
    require currentRootIndex < 100
    return lastRoot[stor3]
}

function roots(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 100
    return lastRoot[arg1]
}

function isSpent(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor106[arg1])
}

function zeros(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < zeros.length
    return zeros[arg1]
}

function filledSubtrees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < filledSubtrees.length
    return filledSubtrees[arg1]
}

function token() {
    return tokenAddress
}

function nextIndex() {
    return nextIndex
}

function _fallback() payable {
    revert
}

function changeOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
    operatorAddress = arg1
}

function updateVerifier(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
    verifierAddress = arg1
}

function isKnownRoot(bytes32 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require uint32(var11001) < 100
    if arg1 != lastRoot[var13001]:
        if not uint32(var15001):
            if currentRootIndex == 99:
                return 0
            if arg1 != stor103:
                var15001 = 99
                continue 
        else:
            if currentRootIndex == uint32(var15001 - 1):
                return 0
            require uint32(var15001 - 1) < 100
            if arg1 != lastRoot[uint32(var15001 - 1)]:
                var15001 = var15001 - 1
                continue 
    return 1
}

function setTaxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x745368616465436173682073657454617850657263656e743a2053686f6c642062652066726f6d203020746f206d617854617850657263656e,
                    mem[221 len 7]
    taxPercent = arg1
}

function isSpentArray(bytes32[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[10186 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 106
        if stor106[cd[((32 * idx) + arg1 + 36)]]:
            require idx < arg1.length
            mem[(32 * idx) + 128] = 1
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function hashLeftRight(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
        revert with 0, '_left should be inside the field'
    if arg2 >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e5f72696768742073686f756c6420626520696e7369646520746865206669656c,
                    mem[197 len 31]
    require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
    delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
    delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mulmod(delegate.return_data[0], arg2, 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0]
}

function addRecipient(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
    if arg2 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7453686164654361736820616464526563697069656e743a2053686f6c642062652066726f6d203020746f206d6178416c6c6f63506f696e,
                    mem[220 len 8]
    idx = 0
    while idx < sub_301b18de.length:
        mem[0] = 110
        if sub_301b18de[idx].field_0 == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x7453686164654361736820616464526563697069656e743a20526563697069656e7420616c7265616479206578697374,
                        mem[212 len 16]
        idx = idx + 1
        continue 
    if arg2 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg2
    sub_301b18de.length++
    stor9930[stor110.length] = arg1
    stor9930[stor110.length] = arg2
}

function sub_9123dad2(?) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
    if arg1 >= sub_301b18de.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6653686164654361736820736574526563697069656e74416c6c6f63506f696e744174496e6465783a204e6f207375636820696e6465,
                    mem[218 len 10]
    if arg2 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0x7353686164654361736820736574526563697069656e74416c6c6f63506f696e744174496e6465783a2053686f6c642062652066726f6d203020746f206d6178416c6c6f63506f696e,
                    mem[237 len 23]
    require arg1 < sub_301b18de.length
    if sub_301b18de[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - sub_301b18de[arg1].field_256
    require arg1 < sub_301b18de.length
    sub_301b18de[arg1].field_256 = arg2
}

function sub_99036c71(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x735368616465436173682077697468647261773a204f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[221 len 7]
    if not sub_301b18de.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x735368616465436173682072656d6f7665526563697069656e744174496e6465783a204e6f20726563697069656e74,
                    mem[211 len 17]
    if arg1 >= sub_301b18de.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x735368616465436173682072656d6f7665526563697069656e744174496e6465783a204e6f207375636820696e6465,
                    mem[211 len 17]
    if sub_301b18de[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalAllocPoint -= sub_301b18de[arg1].field_256
    idx = arg1
    while idx < sub_301b18de.length - 1:
        require idx + 1 < sub_301b18de.length
        require idx < sub_301b18de.length
        mem[0] = 110
        sub_301b18de[idx].field_0 = sub_301b18de[idx + 1].field_0
        sub_301b18de[idx].field_256 = sub_301b18de[idx + 1].field_256
        idx = idx + 1
        continue 
    require sub_301b18de.length
    sub_301b18de[sub_301b18de.length - 1].field_0 = 0
    sub_301b18de[sub_301b18de.length - 1].field_256 = 0
    sub_301b18de.length--
}

function deposit(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor104:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor104 = 0
    if stor107[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x77536861646543617368206465706f7369743a2054686520636f6d6d69746d656e7420686173206265656e207375626d69747465,
                    mem[216 len 12]
    if nextIndex == uint32(2^levels):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x734d65726b6c6520747265652069732066756c6c2e204e6f206d6f7265206c656166732063616e2062652061646465,
                    mem[211 len 17]
    nextIndex = uint32(nextIndex + 1)
    idx = 0
    s = 0
    s = 0
    s = arg1
    t = nextIndex
    while uint32(idx) < levels:
        if bool(t):
            require uint32(idx) < filledSubtrees.length
            if filledSubtrees[uint32(idx)] >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
                revert with 0, '_left should be inside the field'
            if s >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
                revert with 0, 32, 33, 0x2e5f72696768742073686f756c6420626520696e7369646520746865206669656c, mem[197 len 31]
            require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
            delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args filledSubtrees[uint32(idx)], 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[0] = 1
            mem[132] = delegate.return_data[32]
            require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
            delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mulmod(delegate.return_data[0], s, 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
            mem[96 len 64] = delegate.return_data[0 len 64]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            idx = idx + 1
            s = s
            s = filledSubtrees[uint32(idx)]
            s = delegate.return_data[0]
            t = uint32(t) / 2
            continue 
        require uint32(idx) < zeros.length
        require uint32(idx) < filledSubtrees.length
        filledSubtrees[uint32(idx)] = s
        if s >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
            revert with 0, '_left should be inside the field'
        if zeros[uint32(idx)] >= 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000:
            revert with 0, 32, 33, 0x2e5f72696768742073686f756c6420626520696e7369646520746865206669656c, mem[197 len 31]
        require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
        delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args s, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[0] = 1
        mem[132] = delegate.return_data[32]
        require ext_code.size(0x456d35432b3602984b3c7c2968ac335c972b6923)
        delegate 0x456d35432b3602984b3c7c2968ac335c972b6923.MiMCSponge(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mulmod(delegate.return_data[0], zeros[uint32(idx)], 0x7430644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000), delegate.return_data[32]
        mem[96 len 64] = delegate.return_data[0 len 64]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        idx = idx + 1
        s = zeros[uint32(idx)]
        s = s
        s = delegate.return_data[0]
        t = uint32(t) / 2
        continue 
    currentRootIndex = uint32(uint32(currentRootIndex + 1) % 100)
    require uint32(uint32(currentRootIndex + 1) % 100) < 100
    lastRoot[uint32(uint32(stor3 + 1) % 100)] = s
    stor107[arg1] = 1
    if msg.value:
        revert with 0, 
                    32,
                    86,
                    0x655368616465436173685f555344435f3130303030205f70726f636573734465706f7369743a204554482076616c756520697320737570706f73656420746f206265203020666f7220455243323020696e7374616e63,
                    mem[250 len 10]
    mem[228 len 96] = 0, msg.sender, address(this.address), stor105
    call tokenAddress with:
         gas gas_remaining wei
        args denomination, address(this.address), stor105 >> 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        70,
                        0xfe5368616465436173685f555344435f3130303030205f7361666545726332305472616e7366657246726f6d3a204e6f7420656e6f75676820616c6c6f77656420746f6b656e,
                        mem[366 len 26]
        revert with 0, 
                    32,
                    87,
                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e7366657246726f6d3a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                    mem[383 len 9]
    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    70,
                    0xfe5368616465436173685f555344435f3130303030205f7361666545726332305472616e7366657246726f6d3a204e6f7420656e6f75676820616c6c6f77656420746f6b656e,
                    mem[ceil32(return_data.size) + 367 len 26]
    if return_data.size:
        if return_data.size != 32:
            revert with 0, 
                        32,
                        87,
                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e7366657246726f6d3a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                        mem[ceil32(return_data.size) + 384 len 9]
        require return_data.size >= 32
        if not mem[260]:
            revert with 0, 
                        32,
                        92,
                        0x15368616465436173685f555344435f3130303030205f7361666545726332305472616e7366657246726f6d3a204e6f7420656e6f75676820616c6c6f77656420746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                        mem[ceil32(return_data.size) + 389 len 4]
    emit Deposit(nextIndex - 1 << 224, block.timestamp, arg1);
    stor104 = 1
}

function withdraw(bytes arg1, bytes32 arg2, bytes32 arg3, address arg4, address arg5, uint256 arg6, uint256 arg7) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not stor104:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor104 = 0
    if arg6 > denomination:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x745368616465436173682077697468647261773a204665652065786365656473207472616e736665722076616c75,
                    mem[210 len 18]
    mem[0] = arg3
    mem[32] = 106
    if stor106[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e5368616465436173682077697468647261773a20546865206e6f746520686173206265656e20616c7265616479207370656e,
                    mem[215 len 13]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x645368616465436173682077697468647261773a2043616e6e6f742066696e6420796f7572206d65726b6c6520726f6f,
                    mem[212 len 16]
    require uint32(var17001) < 100
    if arg2 == lastRoot[var19001]:
        mem[96] = arg2
        mem[128] = arg3
        mem[160] = arg4
        mem[192] = arg5
        mem[224] = arg6
        mem[256] = arg7
        mem[324 len 192] = arg2, arg3, address(arg4), address(arg5), arg6, arg7
        mem[516] = arg1.length
        mem[548 len arg1.length] = arg1[all]
        mem[arg1.length + 548] = 0
        require ext_code.size(verifierAddress)
        call verifierAddress.verifyProof(bytes arg1, uint256[6] arg2) with:
             gas gas_remaining wei
            args 224, arg2, arg3, address(arg4), address(arg5), arg6, arg7 >> 1280, arg1.length, arg1[all], mem[arg1.length + 548 len ceil32(arg1.length) - arg1.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        43,
                        0x645368616465436173683a3a77697468647261773a20496e76616c69642077697468647261772070726f6f,
                        Mask(168, -512, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 512
        mem[0] = arg3
        mem[32] = 106
        stor106[arg3] = 1
        if arg7 != msg.value:
            revert with 0, 
                        32,
                        87,
                        0x645368616465436173685f555344435f3130303030205f70726f6365737357697468647261773a20496e636f727265637420726566756e6420616d6f756e742072656365697665642062792074686520636f6e74726163,
                        Mask(72, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
        if not taxPercent:
            if arg6 > denomination:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[452 len 64] = 0, address(arg4), Mask(224, 32, denomination - arg6) >> 32
            call tokenAddress with:
               funct Mask(32, -800, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 800
                 gas gas_remaining wei
                args denomination - arg6, Mask(224, 32, address(arg4), Mask(224, 32, denomination - arg6) >> 32) >> 32, Mask(32, 224, arg1.length) >> 224
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                58,
                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                mem[578 len 6]
                if arg2:
                    if arg2 != 32:
                        revert with 0, 
                                    32,
                                    83,
                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                    mem[603 len 13]
                    require arg2 >= 32
                    if not arg3:
                        revert with 0, 
                                    32,
                                    80,
                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                    mem[600 len 16]
                if arg6:
                    mem[552 len 64] = 0, address(arg5), Mask(224, 32, arg6) >> 32
                    call tokenAddress with:
                         gas gas_remaining wei
                        args arg6, Mask(224, 32, address(arg5), Mask(224, 32, arg6) >> 32) >> 32, mem[616 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[678 len 6]
                        if arg2:
                            if arg2 != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[703 len 13]
                            require arg2 >= 32
                            if not arg3:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[700 len 16]
                    else:
                        mem[584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[ceil32(return_data.size) + 679 len 6]
                        if return_data.size:
                            if return_data.size != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[ceil32(return_data.size) + 704 len 13]
                            require return_data.size >= 32
                            if not mem[584]:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[ceil32(return_data.size) + 701 len 16]
            else:
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                58,
                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                mem[ceil32(return_data.size) + 579 len 6]
                if return_data.size:
                    if return_data.size != 32:
                        revert with 0, 
                                    32,
                                    83,
                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                    mem[ceil32(return_data.size) + 604 len 13]
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    80,
                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                    mem[ceil32(return_data.size) + 601 len 16]
                if arg6:
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(arg5), Mask(224, 32, arg6) >> 32
                    call tokenAddress with:
                         gas gas_remaining wei
                        args arg6, Mask(224, 32, address(arg5), Mask(224, 32, arg6) >> 32) >> 32, mem[ceil32(return_data.size) + 617 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[ceil32(return_data.size) + 679 len 6]
                        if arg2:
                            if arg2 != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[ceil32(return_data.size) + 704 len 13]
                            require arg2 >= 32
                            if not arg3:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[ceil32(return_data.size) + 701 len 16]
                    else:
                        mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[(2 * ceil32(return_data.size)) + 680 len 6]
                        if return_data.size:
                            if return_data.size != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[(2 * ceil32(return_data.size)) + 705 len 13]
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 585]:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[(2 * ceil32(return_data.size)) + 702 len 16]
            if arg7:
                call arg4 with:
                   value arg7 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    call arg5 with:
                       value arg7 wei
                         gas 2300 * is_zero(value) wei
                    revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawal(address(arg4), arg3, arg6, arg5);
        else:
            if totalAllocPoint <= 0:
                if arg6 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[452 len 64] = 0, address(arg4), Mask(224, 32, denomination - arg6) >> 32
                call tokenAddress with:
                   funct Mask(32, -800, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 800
                     gas gas_remaining wei
                    args denomination - arg6, Mask(224, 32, address(arg4), Mask(224, 32, denomination - arg6) >> 32) >> 32, Mask(32, 224, arg1.length) >> 224
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    58,
                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                    mem[578 len 6]
                    if arg2:
                        if arg2 != 32:
                            revert with 0, 
                                        32,
                                        83,
                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                        mem[603 len 13]
                        require arg2 >= 32
                        if not arg3:
                            revert with 0, 
                                        32,
                                        80,
                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                        mem[600 len 16]
                    if arg6:
                        mem[552 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                        call tokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg6) << 224, mem[616 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[678 len 6]
                            if arg2:
                                if arg2 != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[703 len 13]
                                require arg2 >= 32
                                if not arg3:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[700 len 16]
                        else:
                            mem[584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[ceil32(return_data.size) + 679 len 6]
                            if return_data.size:
                                if return_data.size != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[ceil32(return_data.size) + 704 len 13]
                                require return_data.size >= 32
                                if not mem[584]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[ceil32(return_data.size) + 701 len 16]
                    if arg7:
                        call arg4 with:
                           value arg7 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            call arg5 with:
                               value arg7 wei
                                 gas 2300 * is_zero(value) wei
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(address(arg4), arg3, arg6, arg5);
                else:
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    58,
                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                    mem[ceil32(return_data.size) + 579 len 6]
                    if not return_data.size:
                        if not arg6:
                            if arg7:
                                call arg4 with:
                                   value arg7 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    call arg5 with:
                                       value arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit Withdrawal(address(arg4), arg3, arg6, arg5);
                        else:
                            mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                            call tokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg6) << 224, mem[ceil32(return_data.size) + 617 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[ceil32(return_data.size) + 679 len 6]
                                if arg2:
                                    if arg2 != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[ceil32(return_data.size) + 704 len 13]
                                    require arg2 >= 32
                                    if not arg3:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[ceil32(return_data.size) + 701 len 16]
                                if not arg7:
                                    emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                else:
                                    call arg4 with:
                                       value arg7 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        call arg5 with:
                                           value arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                    else:
                                        emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                        address(arg4),
                                                        arg3,
                                                        arg6,
                                                        mem[(2 * ceil32(return_data.size)) + 650 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                        arg5,
                            else:
                                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[(2 * ceil32(return_data.size)) + 680 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 6]
                                if return_data.size:
                                    if return_data.size != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[(2 * ceil32(return_data.size)) + 705 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 585]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[(2 * ceil32(return_data.size)) + 702 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                                if not arg7:
                                    emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                    address(arg4),
                                                    arg3,
                                                    arg6,
                                                    mem[(2 * ceil32(return_data.size)) + 650 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                    arg5,
                                else:
                                    call arg4 with:
                                       value arg7 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        call arg5 with:
                                           value arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                        address(arg4),
                                                        arg3,
                                                        arg6,
                                                        mem[(2 * ceil32(return_data.size)) + 650 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                        arg5,
                                    else:
                                        emit Withdrawal(address(arg4), arg3, arg6, arg5);
                    else:
                        if return_data.size != 32:
                            revert with 0, 
                                        32,
                                        83,
                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                        mem[ceil32(return_data.size) + 604 len 13]
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        80,
                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                        mem[ceil32(return_data.size) + 601 len 16]
                        if arg6:
                            mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                            call tokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg6) << 224, mem[ceil32(return_data.size) + 617 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[ceil32(return_data.size) + 679 len 6]
                                if arg2:
                                    if arg2 != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[ceil32(return_data.size) + 704 len 13]
                                    require arg2 >= 32
                                    if not arg3:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[ceil32(return_data.size) + 701 len 16]
                            else:
                                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[(2 * ceil32(return_data.size)) + 680 len 6]
                                if return_data.size:
                                    if return_data.size != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[(2 * ceil32(return_data.size)) + 705 len 13]
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 585]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[(2 * ceil32(return_data.size)) + 702 len 16]
                        if arg7:
                            call arg4 with:
                               value arg7 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                call arg5 with:
                                   value arg7 wei
                                     gas 2300 * is_zero(value) wei
                                revert with ext_call.return_data[0 len return_data.size]
                        emit Withdrawal(address(arg4), arg3, arg6, arg5);
            else:
                mem[64] = 352
                mem[288] = 26
                mem[320] = 'SafeMath: division by zero'
                if denomination / 10000:
                    if taxPercent * denomination / 10000 / denomination / 10000 != taxPercent:
                        revert with 0, 
                                    32,
                                    33,
                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    Mask(248, -1024, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1024
                    idx = 0
                    while idx < sub_301b18de.length:
                        mem[0] = 110
                        if sub_301b18de[idx].field_256 > 0:
                            require idx < sub_301b18de.length
                            mem[0] = 110
                            if taxPercent * denomination / 10000:
                                if sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / taxPercent * denomination / 10000 != sub_301b18de[idx].field_256:
                                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1801 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1801] = 26
                                mem[_1801 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1801 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                _2190 = mem[64]
                                mem[mem[64] + 36] = sub_301b18de[idx].field_0
                                mem[mem[64] + 68] = sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / totalAllocPoint
                                _2191 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2191 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2191 + 36 len 28]
                                _2194 = mem[_2191]
                                t = _2191 + 32
                                u = _2190 + 100
                                s = mem[_2191]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2190 + floor32(mem[_2191]) + 100] = mem[_2191 + -(mem[_2191] % 32) + floor32(mem[_2191]) + 64 len mem[_2191] % 32] or Mask(8 * -(mem[_2191] % 32) + 32, -(8 * -(mem[_2191] % 32) + 32) + 256, mem[_2190 + floor32(mem[_2191]) + 100])
                                call tokenAddress.mem[_2190 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2190 + 104 len _2194 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_2190 + 226 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_2190 + 251 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_2190 + 248 len 16]
                                else:
                                    mem[64] = _2190 + ceil32(return_data.size) + 101
                                    mem[_2190 + 100] = return_data.size
                                    mem[_2190 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_2190 + ceil32(return_data.size) + 227 len 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_2190 + ceil32(return_data.size) + 252 len 13]
                                        require return_data.size >= 32
                                        if not mem[_2190 + 132]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_2190 + ceil32(return_data.size) + 249 len 16]
                            else:
                                _1778 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1778] = 26
                                mem[_1778 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1778 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                _2119 = mem[64]
                                mem[mem[64] + 36] = sub_301b18de[idx].field_0
                                mem[mem[64] + 68] = 0 / totalAllocPoint
                                _2120 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2120 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2120 + 36 len 28]
                                _2123 = mem[_2120]
                                t = _2120 + 32
                                u = mem[64]
                                s = mem[_2120]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2120])] = mem[_2120 + floor32(mem[_2120]) + -(mem[_2120] % 32) + 64 len mem[_2120] % 32] or Mask(8 * -(mem[_2120] % 32) + 32, -(8 * -(mem[_2120] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2120])])
                                call tokenAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2123 + _2119 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[mem[64] + 126 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[mem[64] + 151 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[mem[64] + 148 len 16]
                                else:
                                    _6512 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_6512] = return_data.size
                                    mem[_6512 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[mem[64] + 126 len 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[mem[64] + 151 len 13]
                                        require return_data.size >= 32
                                        if not mem[_6512 + 32]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[mem[64] + 148 len 16]
                        idx = idx + 1
                        continue 
                    _1662 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1662] = 30
                    mem[_1662 + 32] = 'SafeMath: subtraction overflow'
                    if taxPercent * denomination / 10000 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1760 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1760] = 30
                    mem[_1760 + 32] = 'SafeMath: subtraction overflow'
                    if arg6 > denomination - (taxPercent * denomination / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1938 = mem[64]
                    mem[mem[64] + 36] = arg4
                    mem[mem[64] + 68] = denomination - (taxPercent * denomination / 10000) - arg6
                    _1939 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1939 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _1942 = mem[_1939]
                    mem[_1938 + 100 len floor32(mem[_1939])] = mem[_1939 + 32 len floor32(mem[_1939])]
                    mem[_1938 + floor32(mem[_1939]) + -(mem[_1939] % 32) + 132 len mem[_1939] % 32] = mem[_1939 + -(mem[_1939] % 32) + floor32(mem[_1939]) + 64 len mem[_1939] % 32]
                    call tokenAddress.mem[_1938 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_1938 + 104 len _1942 - 4]
                    if return_data.size:
                        mem[_1938 + 100] = return_data.size
                        mem[_1938 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[_1938 + ceil32(return_data.size) + 227 len 6]
                        if return_data.size:
                            if return_data.size != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[_1938 + ceil32(return_data.size) + 252 len 13]
                            require return_data.size >= 32
                            if not mem[_1938 + 132]:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[_1938 + ceil32(return_data.size) + 249 len 16]
                        if not arg6:
                            if arg7:
                                call arg4 with:
                                   value arg7 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    call arg5 with:
                                       value arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit Withdrawal(address(arg4), arg3, arg6, arg5);
                        else:
                            mem[_1938 + ceil32(return_data.size) + 101] = 68
                            mem[_1938 + ceil32(return_data.size) + 137 len 28] = address(arg5) << 64
                            mem[_1938 + ceil32(return_data.size) + 133 len 4] = unknown_0xa9059cbb(?????)
                            mem[_1938 + ceil32(return_data.size) + 201 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                            call tokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg6) << 224, mem[_1938 + ceil32(return_data.size) + 265 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[_1938 + ceil32(return_data.size) + 327 len 6]
                                if mem[96]:
                                    if mem[96] != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[_1938 + ceil32(return_data.size) + 352 len 13]
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[_1938 + ceil32(return_data.size) + 349 len 16]
                                if not arg7:
                                    emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                else:
                                    call arg4 with:
                                       value arg7 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        call arg5 with:
                                           value arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                    else:
                                        emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                        address(arg4),
                                                        arg3,
                                                        arg6,
                                                        mem[_1938 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                        arg5,
                            else:
                                mem[_1938 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[_1938 + (2 * ceil32(return_data.size)) + 328 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 6]
                                if return_data.size:
                                    if return_data.size != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[_1938 + (2 * ceil32(return_data.size)) + 353 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                                    require return_data.size >= 32
                                    if not mem[_1938 + ceil32(return_data.size) + 233]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[_1938 + (2 * ceil32(return_data.size)) + 350 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                                if not arg7:
                                    emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                    address(arg4),
                                                    arg3,
                                                    arg6,
                                                    mem[_1938 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                    arg5,
                                else:
                                    call arg4 with:
                                       value arg7 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        call arg5 with:
                                           value arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                        address(arg4),
                                                        arg3,
                                                        arg6,
                                                        mem[_1938 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                        arg5,
                                    else:
                                        emit Withdrawal(address(arg4), arg3, arg6, arg5);
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[_1938 + 226 len 6]
                        if mem[96]:
                            if mem[96] != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[_1938 + 251 len 13]
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[_1938 + 248 len 16]
                        if arg6:
                            mem[_1938 + 136] = arg5
                            mem[_1938 + 168] = arg6
                            mem[_1938 + 100] = 68
                            mem[_1938 + 136 len 28] = address(arg5) << 64
                            mem[_1938 + 132 len 4] = unknown_0xa9059cbb(?????)
                            mem[_1938 + 200 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                            mem[_1938 + 292 len 4] = uint32(arg6)
                            call tokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg6) << 224, mem[_1938 + 264 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[_1938 + 326 len 6]
                                if mem[96]:
                                    if mem[96] != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[_1938 + 351 len 13]
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[_1938 + 348 len 16]
                            else:
                                mem[_1938 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[_1938 + ceil32(return_data.size) + 327 len 6]
                                if return_data.size:
                                    if return_data.size != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[_1938 + ceil32(return_data.size) + 352 len 13]
                                    require return_data.size >= 32
                                    if not mem[_1938 + 232]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[_1938 + ceil32(return_data.size) + 349 len 16]
                        if arg7:
                            call arg4 with:
                               value arg7 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                call arg5 with:
                                   value arg7 wei
                                     gas 2300 * is_zero(value) wei
                                revert with ext_call.return_data[0 len return_data.size]
                        emit Withdrawal(address(arg4), arg3, arg6, arg5);
                else:
                    idx = 0
                    while idx < sub_301b18de.length:
                        mem[0] = 110
                        if sub_301b18de[idx].field_256 > 0:
                            require idx < sub_301b18de.length
                            mem[0] = 110
                            _1779 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1779] = 26
                            mem[_1779 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1779 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            require idx < sub_301b18de.length
                            mem[0] = 110
                            _2126 = mem[64]
                            mem[mem[64] + 36] = sub_301b18de[idx].field_0
                            mem[mem[64] + 68] = 0 / totalAllocPoint
                            _2127 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2127 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2127 + 36 len 28]
                            _2130 = mem[_2127]
                            t = _2127 + 32
                            u = mem[64]
                            s = mem[_2127]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2127])] = mem[_2127 + floor32(mem[_2127]) + -(mem[_2127] % 32) + 64 len mem[_2127] % 32] or Mask(8 * -(mem[_2127] % 32) + 32, -(8 * -(mem[_2127] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2127])])
                            call tokenAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2130 + _2126 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[mem[64] + 126 len 6]
                                if mem[96]:
                                    if mem[96] != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[mem[64] + 151 len 13]
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[mem[64] + 148 len 16]
                            else:
                                _6520 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6520] = return_data.size
                                mem[_6520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[mem[64] + 126 len 6]
                                if return_data.size:
                                    if return_data.size != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[mem[64] + 151 len 13]
                                    require return_data.size >= 32
                                    if not mem[_6520 + 32]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[mem[64] + 148 len 16]
                        idx = idx + 1
                        continue 
                    _1664 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1664] = 30
                    mem[_1664 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1764 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1764] = 30
                    mem[_1764 + 32] = 'SafeMath: subtraction overflow'
                    if arg6 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1948 = mem[64]
                    mem[mem[64] + 36] = arg4
                    mem[mem[64] + 68] = denomination - arg6
                    _1949 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1949 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _1952 = mem[_1949]
                    mem[mem[64] len floor32(mem[_1949])] = mem[_1949 + 32 len floor32(mem[_1949])]
                    mem[mem[64] + floor32(mem[_1949]) + -(mem[_1949] % 32) + 32 len mem[_1949] % 32] = mem[_1949 + floor32(mem[_1949]) + -(mem[_1949] % 32) + 64 len mem[_1949] % 32]
                    call tokenAddress with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1952 + _1948 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[mem[64] + 126 len 6]
                        if not mem[96]:
                            if arg6:
                                _7031 = mem[64]
                                mem[mem[64] + 36] = arg5
                                mem[mem[64] + 68] = arg6
                                _7032 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_7032 + 32 len 4] = unknown_0xa9059cbb(?????)
                                _7035 = mem[_7032]
                                mem[_7031 + 100 len floor32(mem[_7032])] = mem[_7032 + 32 len floor32(mem[_7032])]
                                mem[_7031 + floor32(mem[_7032]) + -(mem[_7032] % 32) + 132 len mem[_7032] % 32] = mem[_7032 + -(mem[_7032] % 32) + floor32(mem[_7032]) + 64 len mem[_7032] % 32]
                                call tokenAddress.mem[_7031 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_7031 + 104 len _7035 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7031 + 226 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7031 + 251 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7031 + 248 len 16]
                                else:
                                    mem[_7031 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7031 + ceil32(return_data.size) + 227 len 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7031 + ceil32(return_data.size) + 252 len 13]
                                        require return_data.size >= 32
                                        if not mem[_7031 + 132]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7031 + ceil32(return_data.size) + 249 len 16]
                        else:
                            if mem[96] != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[mem[64] + 151 len 13]
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[mem[64] + 148 len 16]
                            if arg6:
                                _7354 = mem[64]
                                mem[mem[64] + 36] = arg5
                                mem[mem[64] + 68] = arg6
                                _7355 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_7355 + 32 len 4] = unknown_0xa9059cbb(?????)
                                _7358 = mem[_7355]
                                mem[mem[64] len floor32(mem[_7355])] = mem[_7355 + 32 len floor32(mem[_7355])]
                                mem[mem[64] + floor32(mem[_7355]) + -(mem[_7355] % 32) + 32 len mem[_7355] % 32] = mem[_7355 + floor32(mem[_7355]) + -(mem[_7355] % 32) + 64 len mem[_7355] % 32]
                                call tokenAddress with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7358 + _7354 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[mem[64] + 126 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[mem[64] + 151 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[mem[64] + 148 len 16]
                                else:
                                    _11049 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_11049] = return_data.size
                                    mem[_11049 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[mem[64] + 126 len 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[mem[64] + 151 len 13]
                                        require return_data.size >= 32
                                        if not mem[_11049 + 32]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[mem[64] + 148 len 16]
                    else:
                        _6515 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6515] = return_data.size
                        mem[_6515 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[mem[64] + 126 len 6]
                        if not return_data.size:
                            if arg6:
                                _7039 = mem[64]
                                mem[mem[64] + 36] = arg5
                                mem[mem[64] + 68] = arg6
                                _7040 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_7040 + 32 len 4] = unknown_0xa9059cbb(?????)
                                _7043 = mem[_7040]
                                mem[_7039 + 100 len floor32(mem[_7040])] = mem[_7040 + 32 len floor32(mem[_7040])]
                                mem[_7039 + floor32(mem[_7040]) + -(mem[_7040] % 32) + 132 len mem[_7040] % 32] = mem[_7040 + -(mem[_7040] % 32) + floor32(mem[_7040]) + 64 len mem[_7040] % 32]
                                call tokenAddress.mem[_7039 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_7039 + 104 len _7043 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7039 + 226 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7039 + 251 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7039 + 248 len 16]
                                else:
                                    mem[_7039 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7039 + ceil32(return_data.size) + 227 len 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7039 + ceil32(return_data.size) + 252 len 13]
                                        require return_data.size >= 32
                                        if not mem[_7039 + 132]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7039 + ceil32(return_data.size) + 249 len 16]
                        else:
                            if return_data.size != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[mem[64] + 151 len 13]
                            require return_data.size >= 32
                            if not mem[_6515 + 32]:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[mem[64] + 148 len 16]
                            if arg6:
                                _7363 = mem[64]
                                mem[mem[64] + 36] = arg5
                                mem[mem[64] + 68] = arg6
                                _7364 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_7364 + 32 len 4] = unknown_0xa9059cbb(?????)
                                _7367 = mem[_7364]
                                mem[_7363 + 100 len floor32(mem[_7364])] = mem[_7364 + 32 len floor32(mem[_7364])]
                                mem[_7363 + floor32(mem[_7364]) + -(mem[_7364] % 32) + 132 len mem[_7364] % 32] = mem[_7364 + -(mem[_7364] % 32) + floor32(mem[_7364]) + 64 len mem[_7364] % 32]
                                call tokenAddress.mem[_7363 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_7363 + 104 len _7367 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7363 + 226 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7363 + 251 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7363 + 248 len 16]
                                else:
                                    mem[_7363 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7363 + ceil32(return_data.size) + 227 len 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7363 + ceil32(return_data.size) + 252 len 13]
                                        require return_data.size >= 32
                                        if not mem[_7363 + 132]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7363 + ceil32(return_data.size) + 249 len 16]
                    if arg7:
                        call arg4 with:
                           value arg7 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            call arg5 with:
                               value arg7 wei
                                 gas 2300 * is_zero(value) wei
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(address(arg4), arg3, arg6, arg5);
    else:
        if not uint32(var21001):
            if currentRootIndex == 99:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x645368616465436173682077697468647261773a2043616e6e6f742066696e6420796f7572206d65726b6c6520726f6f,
                            mem[212 len 16]
            if arg2 != stor103:
                var21001 = 99
                continue 
            mem[96] = arg2
            mem[128] = arg3
            mem[160] = arg4
            mem[192] = arg5
            mem[224] = arg6
            mem[256] = arg7
            mem[324 len 192] = arg2, arg3, address(arg4), address(arg5), arg6, arg7
            mem[516] = arg1.length
            mem[548 len arg1.length] = arg1[all]
            mem[arg1.length + 548] = 0
            require ext_code.size(verifierAddress)
            call verifierAddress.verifyProof(bytes arg1, uint256[6] arg2) with:
                 gas gas_remaining wei
                args 224, arg2, arg3, address(arg4), address(arg5), arg6, arg7 >> 1280, arg1.length, arg1[all], mem[arg1.length + 548 len ceil32(arg1.length) - arg1.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            43,
                            0x645368616465436173683a3a77697468647261773a20496e76616c69642077697468647261772070726f6f,
                            Mask(168, -512, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 512
            mem[0] = arg3
            mem[32] = 106
            stor106[arg3] = 1
            if arg7 != msg.value:
                revert with 0, 
                            32,
                            87,
                            0x645368616465436173685f555344435f3130303030205f70726f6365737357697468647261773a20496e636f727265637420726566756e6420616d6f756e742072656365697665642062792074686520636f6e74726163,
                            Mask(72, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
            if not taxPercent:
                if arg6 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[452 len 64] = 0, address(arg4), Mask(224, 32, denomination - arg6) >> 32
                call tokenAddress with:
                   funct Mask(32, -800, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 800
                     gas gas_remaining wei
                    args denomination - arg6, Mask(224, 32, address(arg4), Mask(224, 32, denomination - arg6) >> 32) >> 32, Mask(32, 224, arg1.length) >> 224
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    58,
                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                    mem[578 len 6]
                    if arg2:
                        if arg2 != 32:
                            revert with 0, 
                                        32,
                                        83,
                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                        mem[603 len 13]
                        require arg2 >= 32
                        if not arg3:
                            revert with 0, 
                                        32,
                                        80,
                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                        mem[600 len 16]
                    if arg6:
                        mem[552 len 64] = 0, address(arg5), Mask(224, 32, arg6) >> 32
                        call tokenAddress with:
                             gas gas_remaining wei
                            args arg6, Mask(224, 32, address(arg5), Mask(224, 32, arg6) >> 32) >> 32, mem[616 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[678 len 6]
                            if arg2:
                                if arg2 != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[703 len 13]
                                require arg2 >= 32
                                if not arg3:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[700 len 16]
                        else:
                            mem[584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[ceil32(return_data.size) + 679 len 6]
                            if return_data.size:
                                if return_data.size != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[ceil32(return_data.size) + 704 len 13]
                                require return_data.size >= 32
                                if not mem[584]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[ceil32(return_data.size) + 701 len 16]
                else:
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    58,
                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                    mem[ceil32(return_data.size) + 579 len 6]
                    if return_data.size:
                        if return_data.size != 32:
                            revert with 0, 
                                        32,
                                        83,
                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                        mem[ceil32(return_data.size) + 604 len 13]
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        80,
                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                        mem[ceil32(return_data.size) + 601 len 16]
                    if arg6:
                        mem[ceil32(return_data.size) + 553 len 64] = 0, address(arg5), Mask(224, 32, arg6) >> 32
                        call tokenAddress with:
                             gas gas_remaining wei
                            args arg6, Mask(224, 32, address(arg5), Mask(224, 32, arg6) >> 32) >> 32, mem[ceil32(return_data.size) + 617 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[ceil32(return_data.size) + 679 len 6]
                            if arg2:
                                if arg2 != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[ceil32(return_data.size) + 704 len 13]
                                require arg2 >= 32
                                if not arg3:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[ceil32(return_data.size) + 701 len 16]
                        else:
                            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[(2 * ceil32(return_data.size)) + 680 len 6]
                            if return_data.size:
                                if return_data.size != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[(2 * ceil32(return_data.size)) + 705 len 13]
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 585]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[(2 * ceil32(return_data.size)) + 702 len 16]
                if arg7:
                    call arg4 with:
                       value arg7 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        call arg5 with:
                           value arg7 wei
                             gas 2300 * is_zero(value) wei
                        revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawal(address(arg4), arg3, arg6, arg5);
            else:
                if totalAllocPoint <= 0:
                    if arg6 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[452 len 64] = 0, address(arg4), Mask(224, 32, denomination - arg6) >> 32
                    call tokenAddress with:
                       funct Mask(32, -800, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 800
                         gas gas_remaining wei
                        args denomination - arg6, Mask(224, 32, address(arg4), Mask(224, 32, denomination - arg6) >> 32) >> 32, Mask(32, 224, arg1.length) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[578 len 6]
                        if arg2:
                            if arg2 != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[603 len 13]
                            require arg2 >= 32
                            if not arg3:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[600 len 16]
                        if arg6:
                            mem[552 len 64] = 0, address(arg5), Mask(224, 32, arg6) >> 32
                            call tokenAddress with:
                                 gas gas_remaining wei
                                args arg6, Mask(224, 32, address(arg5), Mask(224, 32, arg6) >> 32) >> 32, mem[616 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[678 len 6]
                                if arg2:
                                    if arg2 != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[703 len 13]
                                    require arg2 >= 32
                                    if not arg3:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[700 len 16]
                            else:
                                mem[584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[ceil32(return_data.size) + 679 len 6]
                                if return_data.size:
                                    if return_data.size != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[ceil32(return_data.size) + 704 len 13]
                                    require return_data.size >= 32
                                    if not mem[584]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[ceil32(return_data.size) + 701 len 16]
                    else:
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[ceil32(return_data.size) + 579 len 6]
                        if return_data.size:
                            if return_data.size != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[ceil32(return_data.size) + 604 len 13]
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[ceil32(return_data.size) + 601 len 16]
                        if arg6:
                            mem[ceil32(return_data.size) + 553 len 64] = 0, address(arg5), Mask(224, 32, arg6) >> 32
                            call tokenAddress with:
                                 gas gas_remaining wei
                                args arg6, Mask(224, 32, address(arg5), Mask(224, 32, arg6) >> 32) >> 32, mem[ceil32(return_data.size) + 617 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[ceil32(return_data.size) + 679 len 6]
                                if arg2:
                                    if arg2 != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[ceil32(return_data.size) + 704 len 13]
                                    require arg2 >= 32
                                    if not arg3:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[ceil32(return_data.size) + 701 len 16]
                            else:
                                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[(2 * ceil32(return_data.size)) + 680 len 6]
                                if return_data.size:
                                    if return_data.size != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[(2 * ceil32(return_data.size)) + 705 len 13]
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 585]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[(2 * ceil32(return_data.size)) + 702 len 16]
                    if arg7:
                        call arg4 with:
                           value arg7 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            call arg5 with:
                               value arg7 wei
                                 gas 2300 * is_zero(value) wei
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(address(arg4), arg3, arg6, arg5);
                else:
                    mem[64] = 352
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not denomination / 10000:
                        idx = 0
                        while idx < sub_301b18de.length:
                            mem[0] = 110
                            if sub_301b18de[idx].field_256 > 0:
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                _7077 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7077] = 26
                                mem[_7077 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _7077 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                _8104 = mem[64]
                                mem[mem[64] + 36] = sub_301b18de[idx].field_0
                                mem[mem[64] + 68] = 0 / totalAllocPoint
                                _8105 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_8105 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_8105 + 36 len 28]
                                _8108 = mem[_8105]
                                t = _8105 + 32
                                u = mem[64]
                                s = mem[_8105]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_8105])] = mem[_8105 + floor32(mem[_8105]) + -(mem[_8105] % 32) + 64 len mem[_8105] % 32] or Mask(8 * -(mem[_8105] % 32) + 32, -(8 * -(mem[_8105] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8105])])
                                call tokenAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _8108 + _8104 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[mem[64] + 126 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[mem[64] + 151 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[mem[64] + 148 len 16]
                                else:
                                    _11041 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_11041] = return_data.size
                                    mem[_11041 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[mem[64] + 126 len 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[mem[64] + 151 len 13]
                                        require return_data.size >= 32
                                        if not mem[_11041 + 32]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[mem[64] + 148 len 16]
                            idx = idx + 1
                            continue 
                        _6494 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6494] = 30
                        mem[_6494 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _6924 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6924] = 30
                        mem[_6924 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _7623 = mem[64]
                        mem[mem[64] + 36] = arg4
                        mem[mem[64] + 68] = denomination - arg6
                        _7624 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7624 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _7627 = mem[_7624]
                        mem[_7623 + 100 len floor32(mem[_7624])] = mem[_7624 + 32 len floor32(mem[_7624])]
                        mem[_7623 + floor32(mem[_7624]) + -(mem[_7624] % 32) + 132 len mem[_7624] % 32] = mem[_7624 + -(mem[_7624] % 32) + floor32(mem[_7624]) + 64 len mem[_7624] % 32]
                        call tokenAddress.mem[_7623 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_7623 + 104 len _7627 - 4]
                        if return_data.size:
                            mem[_7623 + 100] = return_data.size
                            mem[_7623 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[_7623 + ceil32(return_data.size) + 227 len 6]
                            if return_data.size:
                                if return_data.size != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[_7623 + ceil32(return_data.size) + 252 len 13]
                                require return_data.size >= 32
                                if not mem[_7623 + 132]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[_7623 + ceil32(return_data.size) + 249 len 16]
                            if not arg6:
                                if arg7:
                                    call arg4 with:
                                       value arg7 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        call arg5 with:
                                           value arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit Withdrawal(address(arg4), arg3, arg6, arg5);
                            else:
                                mem[_7623 + ceil32(return_data.size) + 101] = 68
                                mem[_7623 + ceil32(return_data.size) + 137 len 28] = address(arg5) << 64
                                mem[_7623 + ceil32(return_data.size) + 133 len 4] = unknown_0xa9059cbb(?????)
                                mem[_7623 + ceil32(return_data.size) + 201 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                                call tokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg6) << 224, mem[_7623 + ceil32(return_data.size) + 265 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7623 + ceil32(return_data.size) + 327 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7623 + ceil32(return_data.size) + 352 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7623 + ceil32(return_data.size) + 349 len 16]
                                    if not arg7:
                                        emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                    else:
                                        call arg4 with:
                                           value arg7 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            call arg5 with:
                                               value arg7 wei
                                                 gas 2300 * is_zero(value) wei
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                        else:
                                            emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                            address(arg4),
                                                            arg3,
                                                            arg6,
                                                            mem[_7623 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                            arg5,
                                else:
                                    mem[_7623 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7623 + (2 * ceil32(return_data.size)) + 328 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7623 + (2 * ceil32(return_data.size)) + 353 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                                        require return_data.size >= 32
                                        if not mem[_7623 + ceil32(return_data.size) + 233]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7623 + (2 * ceil32(return_data.size)) + 350 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                                    if not arg7:
                                        emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                        address(arg4),
                                                        arg3,
                                                        arg6,
                                                        mem[_7623 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                        arg5,
                                    else:
                                        call arg4 with:
                                           value arg7 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            call arg5 with:
                                               value arg7 wei
                                                 gas 2300 * is_zero(value) wei
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not return_data.size:
                                            emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                            address(arg4),
                                                            arg3,
                                                            arg6,
                                                            mem[_7623 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                            arg5,
                                        else:
                                            emit Withdrawal(address(arg4), arg3, arg6, arg5);
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[_7623 + 226 len 6]
                            if mem[96]:
                                if mem[96] != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[_7623 + 251 len 13]
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[_7623 + 248 len 16]
                            if arg6:
                                mem[_7623 + 136] = arg5
                                mem[_7623 + 168] = arg6
                                mem[_7623 + 100] = 68
                                mem[_7623 + 136 len 28] = address(arg5) << 64
                                mem[_7623 + 132 len 4] = unknown_0xa9059cbb(?????)
                                mem[_7623 + 200 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                                mem[_7623 + 292 len 4] = uint32(arg6)
                                call tokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg6) << 224, mem[_7623 + 264 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7623 + 326 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7623 + 351 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7623 + 348 len 16]
                                else:
                                    mem[_7623 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7623 + ceil32(return_data.size) + 327 len 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7623 + ceil32(return_data.size) + 352 len 13]
                                        require return_data.size >= 32
                                        if not mem[_7623 + 232]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7623 + ceil32(return_data.size) + 349 len 16]
                            if arg7:
                                call arg4 with:
                                   value arg7 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    call arg5 with:
                                       value arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit Withdrawal(address(arg4), arg3, arg6, arg5);
                    else:
                        if taxPercent * denomination / 10000 / denomination / 10000 != taxPercent:
                            revert with 0, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        Mask(248, -1024, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1024
                        idx = 0
                        while idx < sub_301b18de.length:
                            mem[0] = 110
                            if sub_301b18de[idx].field_256 > 0:
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                if not taxPercent * denomination / 10000:
                                    _7076 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7076] = 26
                                    mem[_7076 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _7076 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    _8097 = mem[64]
                                    mem[mem[64] + 36] = sub_301b18de[idx].field_0
                                    mem[mem[64] + 68] = 0 / totalAllocPoint
                                    _8098 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_8098 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_8098 + 36 len 28]
                                    _8101 = mem[_8098]
                                    t = _8098 + 32
                                    u = _8097 + 100
                                    s = mem[_8098]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_8097 + floor32(mem[_8098]) + 100] = mem[_8098 + -(mem[_8098] % 32) + floor32(mem[_8098]) + 64 len mem[_8098] % 32] or Mask(8 * -(mem[_8098] % 32) + 32, -(8 * -(mem[_8098] % 32) + 32) + 256, mem[_8097 + floor32(mem[_8098]) + 100])
                                    call tokenAddress.mem[_8097 + 100 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_8097 + 104 len _8101 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_8097 + 226 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_8097 + 251 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_8097 + 248 len 16]
                                    else:
                                        mem[64] = _8097 + ceil32(return_data.size) + 101
                                        mem[_8097 + 100] = return_data.size
                                        mem[_8097 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_8097 + ceil32(return_data.size) + 227 len 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_8097 + ceil32(return_data.size) + 252 len 13]
                                            require return_data.size >= 32
                                            if not mem[_8097 + 132]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_8097 + ceil32(return_data.size) + 249 len 16]
                                else:
                                    if sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / taxPercent * denomination / 10000 != sub_301b18de[idx].field_256:
                                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _7132 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7132] = 26
                                    mem[_7132 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _7132 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    _8268 = mem[64]
                                    mem[mem[64] + 36] = sub_301b18de[idx].field_0
                                    mem[mem[64] + 68] = sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / totalAllocPoint
                                    _8269 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_8269 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_8269 + 36 len 28]
                                    _8272 = mem[_8269]
                                    t = _8269 + 32
                                    u = _8268 + 100
                                    s = mem[_8269]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_8268 + floor32(mem[_8269]) + 100] = mem[_8269 + -(mem[_8269] % 32) + floor32(mem[_8269]) + 64 len mem[_8269] % 32] or Mask(8 * -(mem[_8269] % 32) + 32, -(8 * -(mem[_8269] % 32) + 32) + 256, mem[_8268 + floor32(mem[_8269]) + 100])
                                    call tokenAddress.mem[_8268 + 100 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_8268 + 104 len _8272 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_8268 + 226 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_8268 + 251 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_8268 + 248 len 16]
                                    else:
                                        mem[64] = _8268 + ceil32(return_data.size) + 101
                                        mem[_8268 + 100] = return_data.size
                                        mem[_8268 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_8268 + ceil32(return_data.size) + 227 len 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_8268 + ceil32(return_data.size) + 252 len 13]
                                            require return_data.size >= 32
                                            if not mem[_8268 + 132]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_8268 + ceil32(return_data.size) + 249 len 16]
                            idx = idx + 1
                            continue 
                        _6492 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6492] = 30
                        mem[_6492 + 32] = 'SafeMath: subtraction overflow'
                        if taxPercent * denomination / 10000 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _6920 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6920] = 30
                        mem[_6920 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination - (taxPercent * denomination / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        _7613 = mem[64]
                        mem[mem[64] + 36] = arg4
                        mem[mem[64] + 68] = denomination - (taxPercent * denomination / 10000) - arg6
                        _7614 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7614 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _7617 = mem[_7614]
                        mem[_7613 + 100 len floor32(mem[_7614])] = mem[_7614 + 32 len floor32(mem[_7614])]
                        mem[_7613 + floor32(mem[_7614]) + -(mem[_7614] % 32) + 132 len mem[_7614] % 32] = mem[_7614 + -(mem[_7614] % 32) + floor32(mem[_7614]) + 64 len mem[_7614] % 32]
                        call tokenAddress.mem[_7613 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_7613 + 104 len _7617 - 4]
                        if return_data.size:
                            mem[_7613 + 100] = return_data.size
                            mem[_7613 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[_7613 + ceil32(return_data.size) + 227 len 6]
                            if not return_data.size:
                                if not arg6:
                                    if arg7:
                                        call arg4 with:
                                           value arg7 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            call arg5 with:
                                               value arg7 wei
                                                 gas 2300 * is_zero(value) wei
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                else:
                                    mem[_7613 + ceil32(return_data.size) + 101] = 68
                                    mem[_7613 + ceil32(return_data.size) + 137 len 28] = address(arg5) << 64
                                    mem[_7613 + ceil32(return_data.size) + 133 len 4] = unknown_0xa9059cbb(?????)
                                    mem[_7613 + ceil32(return_data.size) + 201 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                                    call tokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg6) << 224, mem[_7613 + ceil32(return_data.size) + 265 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_7613 + ceil32(return_data.size) + 327 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_7613 + ceil32(return_data.size) + 352 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_7613 + ceil32(return_data.size) + 349 len 16]
                                        if not arg7:
                                            emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                        else:
                                            call arg4 with:
                                               value arg7 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                call arg5 with:
                                                   value arg7 wei
                                                     gas 2300 * is_zero(value) wei
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not return_data.size:
                                                emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                            else:
                                                emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                                address(arg4),
                                                                arg3,
                                                                arg6,
                                                                mem[_7613 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                arg5,
                                    else:
                                        mem[_7613 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_7613 + (2 * ceil32(return_data.size)) + 328 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_7613 + (2 * ceil32(return_data.size)) + 353 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                                            require return_data.size >= 32
                                            if not mem[_7613 + ceil32(return_data.size) + 233]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_7613 + (2 * ceil32(return_data.size)) + 350 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                                        if not arg7:
                                            emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                            address(arg4),
                                                            arg3,
                                                            arg6,
                                                            mem[_7613 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                            arg5,
                                        else:
                                            call arg4 with:
                                               value arg7 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                call arg5 with:
                                                   value arg7 wei
                                                     gas 2300 * is_zero(value) wei
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not return_data.size:
                                                emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                                address(arg4),
                                                                arg3,
                                                                arg6,
                                                                mem[_7613 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                arg5,
                                            else:
                                                emit Withdrawal(address(arg4), arg3, arg6, arg5);
                            else:
                                if return_data.size != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[_7613 + ceil32(return_data.size) + 252 len 13]
                                require return_data.size >= 32
                                if not mem[_7613 + 132]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[_7613 + ceil32(return_data.size) + 249 len 16]
                                if arg6:
                                    mem[_7613 + ceil32(return_data.size) + 101] = 68
                                    mem[_7613 + ceil32(return_data.size) + 137 len 28] = address(arg5) << 64
                                    mem[_7613 + ceil32(return_data.size) + 133 len 4] = unknown_0xa9059cbb(?????)
                                    mem[_7613 + ceil32(return_data.size) + 201 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                                    call tokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg6) << 224, mem[_7613 + ceil32(return_data.size) + 265 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_7613 + ceil32(return_data.size) + 327 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_7613 + ceil32(return_data.size) + 352 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_7613 + ceil32(return_data.size) + 349 len 16]
                                    else:
                                        mem[_7613 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_7613 + (2 * ceil32(return_data.size)) + 328 len 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_7613 + (2 * ceil32(return_data.size)) + 353 len 13]
                                            require return_data.size >= 32
                                            if not mem[_7613 + ceil32(return_data.size) + 233]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_7613 + (2 * ceil32(return_data.size)) + 350 len 16]
                                if arg7:
                                    call arg4 with:
                                       value arg7 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        call arg5 with:
                                           value arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit Withdrawal(address(arg4), arg3, arg6, arg5);
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[_7613 + 226 len 6]
                            if mem[96]:
                                if mem[96] != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[_7613 + 251 len 13]
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[_7613 + 248 len 16]
                            if arg6:
                                mem[_7613 + 136] = arg5
                                mem[_7613 + 168] = arg6
                                mem[_7613 + 100] = 68
                                mem[_7613 + 136 len 28] = address(arg5) << 64
                                mem[_7613 + 132 len 4] = unknown_0xa9059cbb(?????)
                                mem[_7613 + 200 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                                mem[_7613 + 292 len 4] = uint32(arg6)
                                call tokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg6) << 224, mem[_7613 + 264 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7613 + 326 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7613 + 351 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7613 + 348 len 16]
                                else:
                                    mem[_7613 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7613 + ceil32(return_data.size) + 327 len 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7613 + ceil32(return_data.size) + 352 len 13]
                                        require return_data.size >= 32
                                        if not mem[_7613 + 232]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7613 + ceil32(return_data.size) + 349 len 16]
                            if arg7:
                                call arg4 with:
                                   value arg7 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    call arg5 with:
                                       value arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit Withdrawal(address(arg4), arg3, arg6, arg5);
        else:
            if currentRootIndex == uint32(var21001 - 1):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x645368616465436173682077697468647261773a2043616e6e6f742066696e6420796f7572206d65726b6c6520726f6f,
                            mem[212 len 16]
            require uint32(var21001 - 1) < 100
            if arg2 != lastRoot[uint32(var21001 - 1)]:
                var21001 = var21001 - 1
                continue 
            mem[96] = arg2
            mem[128] = arg3
            mem[160] = arg4
            mem[192] = arg5
            mem[224] = arg6
            mem[256] = arg7
            mem[324 len 192] = arg2, arg3, address(arg4), address(arg5), arg6, arg7
            mem[516] = arg1.length
            mem[548 len arg1.length] = arg1[all]
            mem[arg1.length + 548] = 0
            require ext_code.size(verifierAddress)
            call verifierAddress.verifyProof(bytes arg1, uint256[6] arg2) with:
                 gas gas_remaining wei
                args 224, arg2, arg3, address(arg4), address(arg5), arg6, arg7 >> 1280, arg1.length, arg1[all], mem[arg1.length + 548 len ceil32(arg1.length) - arg1.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            43,
                            0x645368616465436173683a3a77697468647261773a20496e76616c69642077697468647261772070726f6f,
                            Mask(168, -512, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 512
            mem[0] = arg3
            mem[32] = 106
            stor106[arg3] = 1
            if arg7 != msg.value:
                revert with 0, 
                            32,
                            87,
                            0x645368616465436173685f555344435f3130303030205f70726f6365737357697468647261773a20496e636f727265637420726566756e6420616d6f756e742072656365697665642062792074686520636f6e74726163,
                            Mask(72, -768, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 768
            if not taxPercent:
                if arg6 > denomination:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[452 len 64] = 0, address(arg4), Mask(224, 32, denomination - arg6) >> 32
                call tokenAddress with:
                   funct Mask(32, -800, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 800
                     gas gas_remaining wei
                    args denomination - arg6, Mask(224, 32, address(arg4), Mask(224, 32, denomination - arg6) >> 32) >> 32, Mask(32, 224, arg1.length) >> 224
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    58,
                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                    mem[578 len 6]
                    if arg2:
                        if arg2 != 32:
                            revert with 0, 
                                        32,
                                        83,
                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                        mem[603 len 13]
                        require arg2 >= 32
                        if not arg3:
                            revert with 0, 
                                        32,
                                        80,
                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                        mem[600 len 16]
                    if arg6:
                        mem[552 len 64] = 0, address(arg5), Mask(224, 32, arg6) >> 32
                        call tokenAddress with:
                             gas gas_remaining wei
                            args arg6, Mask(224, 32, address(arg5), Mask(224, 32, arg6) >> 32) >> 32, mem[616 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[678 len 6]
                            if arg2:
                                if arg2 != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[703 len 13]
                                require arg2 >= 32
                                if not arg3:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[700 len 16]
                        else:
                            mem[584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[ceil32(return_data.size) + 679 len 6]
                            if return_data.size:
                                if return_data.size != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[ceil32(return_data.size) + 704 len 13]
                                require return_data.size >= 32
                                if not mem[584]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[ceil32(return_data.size) + 701 len 16]
                else:
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    58,
                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                    mem[ceil32(return_data.size) + 579 len 6]
                    if return_data.size:
                        if return_data.size != 32:
                            revert with 0, 
                                        32,
                                        83,
                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                        mem[ceil32(return_data.size) + 604 len 13]
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        80,
                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                        mem[ceil32(return_data.size) + 601 len 16]
                    if arg6:
                        mem[ceil32(return_data.size) + 553 len 64] = 0, address(arg5), Mask(224, 32, arg6) >> 32
                        call tokenAddress with:
                             gas gas_remaining wei
                            args arg6, Mask(224, 32, address(arg5), Mask(224, 32, arg6) >> 32) >> 32, mem[ceil32(return_data.size) + 617 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[ceil32(return_data.size) + 679 len 6]
                            if arg2:
                                if arg2 != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[ceil32(return_data.size) + 704 len 13]
                                require arg2 >= 32
                                if not arg3:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[ceil32(return_data.size) + 701 len 16]
                        else:
                            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[(2 * ceil32(return_data.size)) + 680 len 6]
                            if return_data.size:
                                if return_data.size != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[(2 * ceil32(return_data.size)) + 705 len 13]
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 585]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[(2 * ceil32(return_data.size)) + 702 len 16]
                if arg7:
                    call arg4 with:
                       value arg7 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        call arg5 with:
                           value arg7 wei
                             gas 2300 * is_zero(value) wei
                        revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawal(address(arg4), arg3, arg6, arg5);
            else:
                if totalAllocPoint <= 0:
                    if arg6 > denomination:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[452 len 64] = 0, address(arg4), Mask(224, 32, denomination - arg6) >> 32
                    call tokenAddress with:
                       funct Mask(32, -800, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 800
                         gas gas_remaining wei
                        args denomination - arg6, Mask(224, 32, address(arg4), Mask(224, 32, denomination - arg6) >> 32) >> 32, Mask(32, 224, arg1.length) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[578 len 6]
                        if arg2:
                            if arg2 != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[603 len 13]
                            require arg2 >= 32
                            if not arg3:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[600 len 16]
                        if arg6:
                            mem[552 len 64] = 0, address(arg5), Mask(224, 32, arg6) >> 32
                            call tokenAddress with:
                                 gas gas_remaining wei
                                args arg6, Mask(224, 32, address(arg5), Mask(224, 32, arg6) >> 32) >> 32, mem[616 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[678 len 6]
                                if arg2:
                                    if arg2 != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[703 len 13]
                                    require arg2 >= 32
                                    if not arg3:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[700 len 16]
                            else:
                                mem[584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[ceil32(return_data.size) + 679 len 6]
                                if return_data.size:
                                    if return_data.size != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[ceil32(return_data.size) + 704 len 13]
                                    require return_data.size >= 32
                                    if not mem[584]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[ceil32(return_data.size) + 701 len 16]
                    else:
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                        mem[ceil32(return_data.size) + 579 len 6]
                        if return_data.size:
                            if return_data.size != 32:
                                revert with 0, 
                                            32,
                                            83,
                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                            mem[ceil32(return_data.size) + 604 len 13]
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            80,
                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                            mem[ceil32(return_data.size) + 601 len 16]
                        if arg6:
                            mem[ceil32(return_data.size) + 553 len 64] = 0, address(arg5), Mask(224, 32, arg6) >> 32
                            call tokenAddress with:
                                 gas gas_remaining wei
                                args arg6, Mask(224, 32, address(arg5), Mask(224, 32, arg6) >> 32) >> 32, mem[ceil32(return_data.size) + 617 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[ceil32(return_data.size) + 679 len 6]
                                if arg2:
                                    if arg2 != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[ceil32(return_data.size) + 704 len 13]
                                    require arg2 >= 32
                                    if not arg3:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[ceil32(return_data.size) + 701 len 16]
                            else:
                                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                mem[(2 * ceil32(return_data.size)) + 680 len 6]
                                if return_data.size:
                                    if return_data.size != 32:
                                        revert with 0, 
                                                    32,
                                                    83,
                                                    0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                    mem[(2 * ceil32(return_data.size)) + 705 len 13]
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 585]:
                                        revert with 0, 
                                                    32,
                                                    80,
                                                    0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                    mem[(2 * ceil32(return_data.size)) + 702 len 16]
                    if arg7:
                        call arg4 with:
                           value arg7 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            call arg5 with:
                               value arg7 wei
                                 gas 2300 * is_zero(value) wei
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(address(arg4), arg3, arg6, arg5);
                else:
                    mem[64] = 352
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not denomination / 10000:
                        idx = 0
                        while idx < sub_301b18de.length:
                            mem[0] = 110
                            if sub_301b18de[idx].field_256 > 0:
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                _7063 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7063] = 26
                                mem[_7063 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _7063 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                _8031 = mem[64]
                                mem[mem[64] + 36] = sub_301b18de[idx].field_0
                                mem[mem[64] + 68] = 0 / totalAllocPoint
                                _8032 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_8032 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_8032 + 36 len 28]
                                _8035 = mem[_8032]
                                t = _8032 + 32
                                u = _8031 + 100
                                s = mem[_8032]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_8031 + floor32(mem[_8032]) + 100] = mem[_8032 + -(mem[_8032] % 32) + floor32(mem[_8032]) + 64 len mem[_8032] % 32] or Mask(8 * -(mem[_8032] % 32) + 32, -(8 * -(mem[_8032] % 32) + 32) + 256, mem[_8031 + floor32(mem[_8032]) + 100])
                                call tokenAddress.mem[_8031 + 100 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_8031 + 104 len _8035 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_8031 + 226 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_8031 + 251 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_8031 + 248 len 16]
                                else:
                                    mem[64] = _8031 + ceil32(return_data.size) + 101
                                    mem[_8031 + 100] = return_data.size
                                    mem[_8031 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_8031 + ceil32(return_data.size) + 227 len 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_8031 + ceil32(return_data.size) + 252 len 13]
                                        require return_data.size >= 32
                                        if not mem[_8031 + 132]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_8031 + ceil32(return_data.size) + 249 len 16]
                            idx = idx + 1
                            continue 
                        _6484 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6484] = 30
                        mem[_6484 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _6886 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6886] = 30
                        mem[_6886 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _7548 = mem[64]
                        mem[mem[64] + 36] = arg4
                        mem[mem[64] + 68] = denomination - arg6
                        _7549 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7549 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _7552 = mem[_7549]
                        mem[_7548 + 100 len floor32(mem[_7549])] = mem[_7549 + 32 len floor32(mem[_7549])]
                        mem[_7548 + floor32(mem[_7549]) + -(mem[_7549] % 32) + 132 len mem[_7549] % 32] = mem[_7549 + -(mem[_7549] % 32) + floor32(mem[_7549]) + 64 len mem[_7549] % 32]
                        call tokenAddress.mem[_7548 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_7548 + 104 len _7552 - 4]
                        if return_data.size:
                            mem[_7548 + 100] = return_data.size
                            mem[_7548 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[_7548 + ceil32(return_data.size) + 227 len 6]
                            if not return_data.size:
                                if arg6:
                                    mem[_7548 + ceil32(return_data.size) + 101] = 68
                                    mem[_7548 + ceil32(return_data.size) + 137 len 28] = address(arg5) << 64
                                    mem[_7548 + ceil32(return_data.size) + 133 len 4] = unknown_0xa9059cbb(?????)
                                    mem[_7548 + ceil32(return_data.size) + 201 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                                    call tokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg6) << 224, mem[_7548 + ceil32(return_data.size) + 265 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_7548 + ceil32(return_data.size) + 327 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_7548 + ceil32(return_data.size) + 352 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_7548 + ceil32(return_data.size) + 349 len 16]
                                    else:
                                        mem[_7548 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_7548 + (2 * ceil32(return_data.size)) + 328 len 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_7548 + (2 * ceil32(return_data.size)) + 353 len 13]
                                            require return_data.size >= 32
                                            if not mem[_7548 + ceil32(return_data.size) + 233]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_7548 + (2 * ceil32(return_data.size)) + 350 len 16]
                                if arg7:
                                    call arg4 with:
                                       value arg7 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        call arg5 with:
                                           value arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit Withdrawal(address(arg4), arg3, arg6, arg5);
                            else:
                                if return_data.size != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[_7548 + ceil32(return_data.size) + 252 len 13]
                                require return_data.size >= 32
                                if not mem[_7548 + 132]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[_7548 + ceil32(return_data.size) + 249 len 16]
                                if not arg6:
                                    if arg7:
                                        call arg4 with:
                                           value arg7 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            call arg5 with:
                                               value arg7 wei
                                                 gas 2300 * is_zero(value) wei
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                else:
                                    mem[_7548 + ceil32(return_data.size) + 101] = 68
                                    mem[_7548 + ceil32(return_data.size) + 137 len 28] = address(arg5) << 64
                                    mem[_7548 + ceil32(return_data.size) + 133 len 4] = unknown_0xa9059cbb(?????)
                                    mem[_7548 + ceil32(return_data.size) + 201 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                                    call tokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg6) << 224, mem[_7548 + ceil32(return_data.size) + 265 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_7548 + ceil32(return_data.size) + 327 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_7548 + ceil32(return_data.size) + 352 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_7548 + ceil32(return_data.size) + 349 len 16]
                                        if not arg7:
                                            emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                        else:
                                            call arg4 with:
                                               value arg7 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                call arg5 with:
                                                   value arg7 wei
                                                     gas 2300 * is_zero(value) wei
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not return_data.size:
                                                emit Withdrawal(address(arg4), arg3, arg6, arg5);
                                            else:
                                                emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                                address(arg4),
                                                                arg3,
                                                                arg6,
                                                                mem[_7548 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                arg5,
                                    else:
                                        mem[_7548 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_7548 + (2 * ceil32(return_data.size)) + 328 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_7548 + (2 * ceil32(return_data.size)) + 353 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 13]
                                            require return_data.size >= 32
                                            if not mem[_7548 + ceil32(return_data.size) + 233]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_7548 + (2 * ceil32(return_data.size)) + 350 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                                        if not arg7:
                                            emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                            address(arg4),
                                                            arg3,
                                                            arg6,
                                                            mem[_7548 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                            arg5,
                                        else:
                                            call arg4 with:
                                               value arg7 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                call arg5 with:
                                                   value arg7 wei
                                                     gas 2300 * is_zero(value) wei
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not return_data.size:
                                                emit Withdrawal(address arg1, bytes32 arg2, address arg3, uint256 arg4):
                                                                address(arg4),
                                                                arg3,
                                                                arg6,
                                                                mem[_7548 + (2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                arg5,
                                            else:
                                                emit Withdrawal(address(arg4), arg3, arg6, arg5);
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[_7548 + 226 len 6]
                            if mem[96]:
                                if mem[96] != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[_7548 + 251 len 13]
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[_7548 + 248 len 16]
                            if arg6:
                                mem[_7548 + 136] = arg5
                                mem[_7548 + 168] = arg6
                                mem[_7548 + 100] = 68
                                mem[_7548 + 136 len 28] = address(arg5) << 64
                                mem[_7548 + 132 len 4] = unknown_0xa9059cbb(?????)
                                mem[_7548 + 200 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, arg6) >> 32
                                mem[_7548 + 292 len 4] = uint32(arg6)
                                call tokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg6) << 224, mem[_7548 + 264 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7548 + 326 len 6]
                                    if mem[96]:
                                        if mem[96] != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7548 + 351 len 13]
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7548 + 348 len 16]
                                else:
                                    mem[_7548 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                    mem[_7548 + ceil32(return_data.size) + 327 len 6]
                                    if return_data.size:
                                        if return_data.size != 32:
                                            revert with 0, 
                                                        32,
                                                        83,
                                                        0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                        mem[_7548 + ceil32(return_data.size) + 352 len 13]
                                        require return_data.size >= 32
                                        if not mem[_7548 + 232]:
                                            revert with 0, 
                                                        32,
                                                        80,
                                                        0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                        mem[_7548 + ceil32(return_data.size) + 349 len 16]
                            if arg7:
                                call arg4 with:
                                   value arg7 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    call arg5 with:
                                       value arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit Withdrawal(address(arg4), arg3, arg6, arg5);
                    else:
                        if taxPercent * denomination / 10000 / denomination / 10000 != taxPercent:
                            revert with 0, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        Mask(248, -1024, arg2, arg3, address(arg4), address(arg5), arg6, arg7) << 1024
                        idx = 0
                        while idx < sub_301b18de.length:
                            mem[0] = 110
                            if sub_301b18de[idx].field_256 > 0:
                                require idx < sub_301b18de.length
                                mem[0] = 110
                                if not taxPercent * denomination / 10000:
                                    _7062 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7062] = 26
                                    mem[_7062 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _7062 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    _8024 = mem[64]
                                    mem[mem[64] + 36] = sub_301b18de[idx].field_0
                                    mem[mem[64] + 68] = 0 / totalAllocPoint
                                    _8025 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_8025 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_8025 + 36 len 28]
                                    _8028 = mem[_8025]
                                    t = _8025 + 32
                                    u = _8024 + 100
                                    s = mem[_8025]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_8024 + floor32(mem[_8025]) + 100] = mem[_8025 + -(mem[_8025] % 32) + floor32(mem[_8025]) + 64 len mem[_8025] % 32] or Mask(8 * -(mem[_8025] % 32) + 32, -(8 * -(mem[_8025] % 32) + 32) + 256, mem[_8024 + floor32(mem[_8025]) + 100])
                                    call tokenAddress.mem[_8024 + 100 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_8024 + 104 len _8028 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_8024 + 226 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_8024 + 251 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_8024 + 248 len 16]
                                    else:
                                        mem[64] = _8024 + ceil32(return_data.size) + 101
                                        mem[_8024 + 100] = return_data.size
                                        mem[_8024 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_8024 + ceil32(return_data.size) + 227 len 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_8024 + ceil32(return_data.size) + 252 len 13]
                                            require return_data.size >= 32
                                            if not mem[_8024 + 132]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_8024 + ceil32(return_data.size) + 249 len 16]
                                else:
                                    if sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / taxPercent * denomination / 10000 != sub_301b18de[idx].field_256:
                                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _7109 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7109] = 26
                                    mem[_7109 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _7109 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < sub_301b18de.length
                                    mem[0] = 110
                                    _8214 = mem[64]
                                    mem[mem[64] + 36] = sub_301b18de[idx].field_0
                                    mem[mem[64] + 68] = sub_301b18de[idx].field_256 * taxPercent * denomination / 10000 / totalAllocPoint
                                    _8215 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_8215 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_8215 + 36 len 28]
                                    _8218 = mem[_8215]
                                    t = _8215 + 32
                                    u = mem[64]
                                    s = mem[_8215]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_8215])] = mem[_8215 + floor32(mem[_8215]) + -(mem[_8215] % 32) + 64 len mem[_8215] % 32] or Mask(8 * -(mem[_8215] % 32) + 32, -(8 * -(mem[_8215] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_8215])])
                                    call tokenAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _8218 + _8214 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[mem[64] + 126 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[mem[64] + 151 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[mem[64] + 148 len 16]
                                    else:
                                        _11003 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_11003] = return_data.size
                                        mem[_11003 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[mem[64] + 126 len 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[mem[64] + 151 len 13]
                                            require return_data.size >= 32
                                            if not mem[_11003 + 32]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[mem[64] + 148 len 16]
                            idx = idx + 1
                            continue 
                        _6482 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6482] = 30
                        mem[_6482 + 32] = 'SafeMath: subtraction overflow'
                        if taxPercent * denomination / 10000 > denomination:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _6882 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6882] = 30
                        mem[_6882 + 32] = 'SafeMath: subtraction overflow'
                        if arg6 > denomination - (taxPercent * denomination / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        _7538 = mem[64]
                        mem[mem[64] + 36] = arg4
                        mem[mem[64] + 68] = denomination - (taxPercent * denomination / 10000) - arg6
                        _7539 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_7539 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _7542 = mem[_7539]
                        mem[mem[64] len floor32(mem[_7539])] = mem[_7539 + 32 len floor32(mem[_7539])]
                        mem[mem[64] + floor32(mem[_7539]) + -(mem[_7539] % 32) + 32 len mem[_7539] % 32] = mem[_7539 + floor32(mem[_7539]) + -(mem[_7539] % 32) + 64 len mem[_7539] % 32]
                        call tokenAddress with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _7542 + _7538 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[mem[64] + 126 len 6]
                            if not mem[96]:
                                if arg6:
                                    _11739 = mem[64]
                                    mem[mem[64] + 36] = arg5
                                    mem[mem[64] + 68] = arg6
                                    _11740 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_11740 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    _11743 = mem[_11740]
                                    mem[mem[64] len floor32(mem[_11740])] = mem[_11740 + 32 len floor32(mem[_11740])]
                                    mem[mem[64] + floor32(mem[_11740]) + -(mem[_11740] % 32) + 32 len mem[_11740] % 32] = mem[_11740 + floor32(mem[_11740]) + -(mem[_11740] % 32) + 64 len mem[_11740] % 32]
                                    call tokenAddress with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _11743 + _11739 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[mem[64] + 126 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[mem[64] + 151 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[mem[64] + 148 len 16]
                                    else:
                                        _14050 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_14050] = return_data.size
                                        mem[_14050 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[mem[64] + 126 len 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[mem[64] + 151 len 13]
                                            require return_data.size >= 32
                                            if not mem[_14050 + 32]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[mem[64] + 148 len 16]
                            else:
                                if mem[96] != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[mem[64] + 151 len 13]
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[mem[64] + 148 len 16]
                                if arg6:
                                    _12238 = mem[64]
                                    mem[mem[64] + 36] = arg5
                                    mem[mem[64] + 68] = arg6
                                    _12239 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_12239 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    _12242 = mem[_12239]
                                    mem[_12238 + 100 len floor32(mem[_12239])] = mem[_12239 + 32 len floor32(mem[_12239])]
                                    mem[_12238 + floor32(mem[_12239]) + -(mem[_12239] % 32) + 132 len mem[_12239] % 32] = mem[_12239 + -(mem[_12239] % 32) + floor32(mem[_12239]) + 64 len mem[_12239] % 32]
                                    call tokenAddress.mem[_12238 + 100 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_12238 + 104 len _12242 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_12238 + 226 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_12238 + 251 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_12238 + 248 len 16]
                                    else:
                                        mem[_12238 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_12238 + ceil32(return_data.size) + 227 len 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_12238 + ceil32(return_data.size) + 252 len 13]
                                            require return_data.size >= 32
                                            if not mem[_12238 + 132]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_12238 + ceil32(return_data.size) + 249 len 16]
                        else:
                            _10998 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_10998] = return_data.size
                            mem[_10998 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                            mem[mem[64] + 126 len 6]
                            if not return_data.size:
                                if arg6:
                                    _11747 = mem[64]
                                    mem[mem[64] + 36] = arg5
                                    mem[mem[64] + 68] = arg6
                                    _11748 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_11748 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    _11751 = mem[_11748]
                                    mem[_11747 + 100 len floor32(mem[_11748])] = mem[_11748 + 32 len floor32(mem[_11748])]
                                    mem[_11747 + floor32(mem[_11748]) + -(mem[_11748] % 32) + 132 len mem[_11748] % 32] = mem[_11748 + -(mem[_11748] % 32) + floor32(mem[_11748]) + 64 len mem[_11748] % 32]
                                    call tokenAddress.mem[_11747 + 100 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_11747 + 104 len _11751 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_11747 + 226 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_11747 + 251 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_11747 + 248 len 16]
                                    else:
                                        mem[_11747 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[_11747 + ceil32(return_data.size) + 227 len 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[_11747 + ceil32(return_data.size) + 252 len 13]
                                            require return_data.size >= 32
                                            if not mem[_11747 + 132]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[_11747 + ceil32(return_data.size) + 249 len 16]
                            else:
                                if return_data.size != 32:
                                    revert with 0, 
                                                32,
                                                83,
                                                0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                mem[mem[64] + 151 len 13]
                                require return_data.size >= 32
                                if not mem[_10998 + 32]:
                                    revert with 0, 
                                                32,
                                                80,
                                                0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                mem[mem[64] + 148 len 16]
                                if arg6:
                                    _12247 = mem[64]
                                    mem[mem[64] + 36] = arg5
                                    mem[mem[64] + 68] = arg6
                                    _12248 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_12248 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    _12251 = mem[_12248]
                                    mem[mem[64] len floor32(mem[_12248])] = mem[_12248 + 32 len floor32(mem[_12248])]
                                    mem[mem[64] + floor32(mem[_12248]) + -(mem[_12248] % 32) + 32 len mem[_12248] % 32] = mem[_12248 + floor32(mem[_12248]) + -(mem[_12248] % 32) + 64 len mem[_12248] % 32]
                                    call tokenAddress with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _12251 + _12247 + -mem[64] + 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[mem[64] + 126 len 6]
                                        if mem[96]:
                                            if mem[96] != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[mem[64] + 151 len 13]
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[mem[64] + 148 len 16]
                                    else:
                                        _14053 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_14053] = return_data.size
                                        mem[_14053 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x655368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e,
                                                        mem[mem[64] + 126 len 6]
                                        if return_data.size:
                                            if return_data.size != 32:
                                                revert with 0, 
                                                            32,
                                                            83,
                                                            0x785368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a2044617461206c656e6774682073686f756c64206265206569746865722030206f722033322062797465,
                                                            mem[mem[64] + 151 len 13]
                                            require return_data.size >= 32
                                            if not mem[_14053 + 32]:
                                                revert with 0, 
                                                            32,
                                                            80,
                                                            0x2e5368616465436173685f555344435f3130303030205f7361666545726332305472616e736665723a204e6f7420656e6f75676820746f6b656e732e20546f6b656e2072657475726e732066616c7365,
                                                            mem[mem[64] + 148 len 16]
                        if arg7:
                            call arg4 with:
                               value arg7 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                call arg5 with:
                                   value arg7 wei
                                     gas 2300 * is_zero(value) wei
                                revert with ext_call.return_data[0 len return_data.size]
                        emit Withdrawal(address(arg4), arg3, arg6, arg5);
    stor104 = 1
}



}
