# Docker file to run cumulus-library
FROM python:bookworm
WORKDIR /app
RUN mkdir -p /cumulus/studies
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY credentials /root/.aws/credentials
ENV CUMULUS_LIBRARY_DATABASE=cumulus_library_sample_db
#ENV CUMULUS_LIBRARY_PATH=/cumulus/studies
# root@58411ff65a99:/app# cumulus-library -c -p ./studies/cumulus_library_sample_db
# Traceback (most recent call last):
#   File "/usr/local/bin/cumulus-library", line 8, in <module>
#     sys.exit(main_cli())
#              ^^^^^^^^^^
#   File "/usr/local/lib/python3.11/site-packages/cumulus_library/cli.py", line 361, in main_cli
#     main()
#   File "/usr/local/lib/python3.11/site-packages/cumulus_library/cli.py", line 355, in main
#     args["path"] = [path_dir] + args["path"]
#                    ~~~~~~~~~~~^~~~~~~~~~~~~~
# TypeError: can only concatenate list (not "str") to list

CMD ["/bin/bash"]