FROM uofa/utility-php7

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
&& echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list \
&& sudo apt-get -y update \
&& sudo apt-get install -y google-chrome-stable \
&& wget https://chromedriver.storage.googleapis.com/2.33/chromedriver_linux64.zip \
&& unzip chromedriver_linux64.zip -d /usr/local/bin \
&& rm chromedriver_linux64.zip \
&& chmod +x /usr/local/bin/chromedriver
