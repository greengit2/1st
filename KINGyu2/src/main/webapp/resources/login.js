/**
 * 
 */
const form = document.querySelector('form'); // 폼 요소를 선택합니다.
const usernameInput = document.querySelector('input[name="id"]'); // 사용자 이름 입력 필드를 선택합니다.
const passwordInput = document.querySelector('input[name="password"]'); // 비밀번호 입력 필드를 선택합니다.

function validateForm(event) {
  event.preventDefault(); // 폼 제출 이벤트를 막습니다.

  if (usernameInput.value.trim() === '') { // 사용자 이름 입력 필드가 빈 값인지 확인합니다.
    alert('Please enter a valid username.'); // 경고창을 표시합니다.
    return;
  }

  if (passwordInput.value.trim() === '') { // 비밀번호 입력 필드가 빈 값인지 확인합니다.
    alert('Please enter a valid password.'); // 경고창을 표시합니다.
    return;
  }

  if (passwordInput.value.length < 8) { // 비밀번호 입력 필드가 8자리 이상인지 확인합니다.
    alert('Please enter a password that is at least 8 characters long.'); // 경고창을 표시합니다.
    return;
  }

  // 여기에 다음 작업을 수행합니다.
  // ...

  form.submit(); // 유효성 검사를 통과하면 폼을 제출합니다.
}

form.addEventListener('submit', validateForm); // 제출 이벤트 리스너를 추가합니다.