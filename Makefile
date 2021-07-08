# -*- mode:makefile; coding:utf-8 -*-

# Copyright (c) 2020 IBM Corp. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

install:
	python -m pip install  --upgrade pip setuptools
	python -m pip install compliance-trestle
	python -m pip install pre-commit

pre-commit: 
	pre-commit install

mdformat:
	pre-commit run mdformat --all-files



validate:
	trestle author folders validate -tn arc42-multidoc
	trestle author docs validate -tn arc42-single

validate-expect-failure:
	trestle author docs validate -tn arc42-single-failure