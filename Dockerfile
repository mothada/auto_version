FROM python:2
ARG InBuildNum
ENV build_id=$InBuildNum
ADD editjason.py $HOME
ADD version.json $HOME
#RUN mkdir --parents /opt/auto_version/f

#RUN pip install pytest

CMD python ./editjason.py $build_id
