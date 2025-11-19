# 검색엔진 듀엣

2023년 3월의 AI 검색은 "문서 요약 + 링크" 정도의 프로덕트였다. 특정 API 명세를 찾으려면 프롬프트를 분해해 단계별로 요청하고, 관련 문서를 여러 탭으로 열어 비교해야 했다. 질문을 조금 꼬아 던지면 모델이 "해당 정보를 찾을 수 없다"며 기본 검색 결과로 되돌아가는 일이 잦았다.

<pre style="color:#5AA7FF;font-family:var(--font-mono,monospace);background:none;border:none;padding:0;margin:1em 0">
"2023년 AI 검색은 결국 인간이 진공관 앰프처럼 직접 튜닝해야 했다."
</pre>

<video controls playsinline style="width:100%;max-width:720px">
  <source src="/log/videos/search-2023.mp4" type="video/mp4" />
  브라우저가 동영상을 지원하지 않습니다. <a href="/log/videos/search-2023.mp4">직접 내려받아 감상하세요.</a>
</video>

2025년의 검색은 대화형 에이전트가 전면에 나선다. 모델은 즉시 후속 질문을 제안하고, 코드 샘플과 시각적 다이어그램을 한 화면에서 조합해 준다. 링크는 더 이상 "더 알아보기"의 수단이 아니라, 컨텍스트 그래프를 확장하는 노드다. 영상 속에서 보이듯이, 플러그인과 실시간 문서 편집어가 검색 패널 안에 합쳐지면서 결과를 바로 실행하거나 저장할 수 있다.

<pre style="color:#5AA7FF;font-family:var(--font-mono,monospace);background:none;border:none;padding:0;margin:1em 0">
"2025년 AI 검색은 능동형 IDE이자 시맨틱 그래프 탐색기다."
</pre>

<video controls playsinline style="width:100%;max-width:720px">
  <source src="/log/videos/search-2025-current.mp4" type="video/mp4" />
  브라우저가 동영상을 지원하지 않습니다. <a href="/log/videos/search-2025-current.mp4">직접 내려받아 감상하세요.</a>
</video>

기술적으로 가장 큰 차이는 검색 인덱스가 "정적 문서"에서 "실행 가능한 에이전트 네트워크"로 확장되었다는 점이다. 2023년에는 인덱싱 단계에서 딥링크와 스니펫을 준비하고, 추론 단계에서 일반화된 응답을 조합했다. 2025년에는 검색어마다 최소 두 개 이상의 도구 체인을 미리 부팅하고, 사용자 세션에 맞춰 시퀀스를 재구성한다. 즉, 검색은 단순한 정보 회수(retrieval)가 아니라, 계획 수립(planning)의 일부가 된 셈이다.

이 변화는 RAG(Retrieval-Augmented Generation) 파이프라인의 확장으로 설명할 수 있다. 초기 RAG가 문장 임베딩과 지식 베이스 조회를 결합했다면, 지금은 Toolformer 류의 정책 모델이 어떤 외부 도구를 호출할지 학습한 뒤, 에이전트 오케스트라가 실시간으로 API를 조합한다. 검색창에 질문을 던지는 순간 작은 워크플로가 배치되고, 사용자는 그 실행 과정을 UI를 통해 확인한다. "검색엔진 듀엣"이라 부르는 이유는, 인간의 질문과 AI의 플로우가 하나의 악보 위에서 동시에 연주되기 때문이다.
