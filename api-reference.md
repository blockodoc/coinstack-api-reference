# API Reference

코인스택 API는 모든 데이터를 객체로 취급하여 주고 받습니다. 코인스택 API를 호출할 때 파라미터로 코인스택 객체를 제공해야 하고, 또한 그 결과로 코인스택 객체를 반환받게 되므로 어떤 종류가 있는지, 어떤 속성을 갖는지 본 문서를 통해 확인하시기 바랍니다.

코인스택 API는 다음과 같이 다양한 종류의 객체를 제공하지만, 대부분 블록체인의 데이터 모델에 대응하여 설계되어 있으므로 쉽게 파악할 수 있습니다.

## BlockchainStatus

BlockchainStatus는 블록체인의 상태 정보를 나타내는 객체입니다.

| Attribute | Type | Description |
| :--- | :--- | :--- |
| best\_block\_hash | string | 가장 최신의 블록체인 블록 해시 |
| best\_height | number | 블록체인의 현재 높이, 즉 가장 최신의 블록 번호 |

## Block

Block은 블록체인을 구성하는 특정 블록의 상태 정보를 나타내는 객체입니다.

| Attribute | Type | Description |
| :--- | :--- | :--- |
| block\_hash | string | 블록의 해시 |
| height | number | 블록의 높이 |
| confirmation\_time | [date](https://tools.ietf.org/html/rfc3339) | 블록이 승인된 시간 |
| parent | string | 블록의 부모 블록 해시 |
| children | array\[string\] | 블록의 자식 블록 해시 목록 |
| transaction\_list | array\[string\] | 요청한 블록에 포함된 트랜잭션 해시 목록 |

## Address

Address는 비트코인 주소를 의미하며, Address 관련 객체들은 아래와 같습니다.

### 1. Address Balance

Address Balance는 현재 특정 비트코인 주소에서 다른 주소로 송금 가능한 잔액을 사토시 단위로 나타내는 객체입니다.

| Attribute | Type | Description |
| :--- | :--- | :--- |
| balance | number | 주소의 사용 가능한 잔고 \(사토시 단위\) |

### 2. Address History

Address History는 특정 비트코인 주소와 관련된 트랜잭션들의 해시값 목록을 가지는 객체입니다.

| Attribute | Type | Description |
| :--- | :--- | :--- |
| \(없음\) | array\[string\] | 주소에 발생한 트랜잭션 해시 목록 |

### 3. Address Unspent Outputs

Address Unspent Output은 특정 비트코인 주소의 잔액을 구성하는, 소비되지 않은 출력값에 관한 객체입니다.

| Attribute | Type | Description |
| :--- | :--- | :--- |
| transaction\_hash | string | output이 속한 트랜잭션 해시 |
| index | number | output index |
| value | string | output의 값 \(사토시 단위\) |
| script | string | output의 script |
| confirmations | number | output이 속한 트랜잭션이 승인된 회수 |

## Transaction

Transaction은 블록에 저장된 주소 간의 거래 정보인 트랜잭션을 나타내는 객체입니다.

| Attribute | Type | Description |
| :--- | :--- | :--- |
| transaction\_hash | string | 트랜잭션의 해시 |
| block\_hash | list\[string\] | 트랜잭션이 포함된 블록의 해시 |
| block\_hash.block\_hash | string | 트랜잭션이 포함된 블록의 해시 |
| block\_hash.block\_height | number | 트랜잭션이 포함된 블록의 높이 |
| coinbase | boolean | Coinbase 트랜잭션 여부 |
| inputs | array\[object\] | Transaction Input 목록 |
| outputs | array\[object\] | Transaction Output 목록 |
| timestamp | string | 트랜잭션이 포함된 블록이 최초 승인된 시간 - [date](https://tools.ietf.org/html/rfc3339) 참조 |
| initialtimestamp | string | 트랜잭션이 broadcast된 시간 - [date](https://tools.ietf.org/html/rfc3339) 참조 |
| addresses | array\[string\] | 트랜잭션과 관련된 주소 목록 |

### 1. Transaction Input

Transaction Input은 특정 트랜잭션의 입력값을 나타내는 객체입니다. 하나의 트랜잭션에는 하나 이상의 입력값이 존재할 수 있으며, Transaction 객체에는 이들의 목록이 배열로 저장됩니다. Transaction Input은 이 목록을 구성하는 개별 입력값 단위에 해당합니다.

| Attribute | Type | Description |
| :--- | :--- | :--- |
| transaction\_hash | string | input이 포함된 트랜잭션 |
| output\_index | number | 해당 트랜잭션에서의 output index |
| address | array\[string\] | 해당 input과 관련된 주소 목록 |
| value | number | input 값 \(사토시 단위\) |

### 2. Transaction Output

Transaction Output은 특정 트랜잭션의 출력값을 나타내는 객체입니다. 하나의 트랜잭션에는 하나 이상의 출력값이 존재할 수 있으며, Transaction 객체에는 이들의 목록이 배열로 저장됩니다. Transaction Output은 이 목록을 구성하는 개별 출력값 단위에 해당합니다.

| Attribute | Type | Description |
| :--- | :--- | :--- |
| index | number |  |
| address | array\[string\] | output과 관련된 주소 목록 |
| script | string | output의 script |
| value | number | output 값 \(사토시 단위\) |
| used | boolean | \(Optional\) output 의 사용 여부 |
| data | string | \(Optional\) OP\_RETURN 데이터 |

## Stamp

코인스택 고유 기능인 문서 진위 확인 서비스\(Document Stamping\)에서 사용하는 객체입니다.

| Attribute | Type | Description |
| :--- | :--- | :--- |
| tx | string | 스탬프 정보가 기록되어 등록된 트랜잭션 해시 |
| vout | number | 상기 트랜잭션의 출력값 중 스탬프 정보가 기록된 위치 |
| confirmations | number | 상기 트랜잭션이 속한 블럭의 승인된 횟수 |
| timestamp | string | 상기 트랜잭션이 속한 블럭이 최초 승인된 시간   - [date](https://tools.ietf.org/html/rfc3339) 참조 |

