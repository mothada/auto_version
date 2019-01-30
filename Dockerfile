FROM python:2
ARG InBuildNum
ENV build_id=$InBuildNum
ADD editjason.py /opt/auto_version/
ADD version.json /opt/auto_version/
#RUN mkdir --parents /opt/auto_version/f

#RUN pip install pytest

CMD python ./editjason.py $build_id

