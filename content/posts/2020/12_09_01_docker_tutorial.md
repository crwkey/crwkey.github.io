---
title: "Docker 入门指南"
date: 2020-12-09T12:07:19+08:00
draft: false 
---
全文较长，大致需要半小时左右时间阅读，若你已经有基础，可以根据自己的了解程度看起。

本文记录作为一个新手，从 Docker 起步

1. Docker 简介
    * 1.1 Docker 概念
    * 1.2 Docker 与 虚拟机区别

2. Docker 基本概念
    * 2.1 核心概念
    * 2.2 Docker 三剑客

其中第一章与第二章非常详细地介绍了 Docker 的相关概念与基本组成，主要是概论介绍等文字描述，第三章与第四章偏重于上手实践，从 Docker 环境安装、运行加速、镜像使用、镜像构成到镜像定制与发布，分解了各步骤的流程，通过教程加注解的形式加深读者印象。其中建立镜像的示例代码可以从


## 一、Docker 简介

谈到 Docker，不论我们是否实践过，都应该对它或多或少有一个印象，即“环境一次创建，多端一致性运行”，因为它正解决了曾经困扰我们已久“这段代码在我电脑上运行没问题啊”的烦恼。首先，简单介绍一下 Docker 技术是什么。

### 1.1 Docker 概念扫盲：什么是 Docker？

Docker 是一个开放源代码软件项目，项目主要代码在2013年开源于 GitHub。它是云服务技术上的一次创新，让应用程序布署在软件容器下的工作可以自动化进行，借此在 Linux 操作系统上，提供一个额外的软件抽象层，以及操作系统层虚拟化的自动管理机制。

### 1.2 Docker 和虚拟机的区别与特点


## 二、Docker 基本概念

### 2.1 核心概念：镜像、容器与仓库

Docker 主要包含三个基本概念，分别是镜像、容器和仓库，理解了这三个概念，就理解了 Docker 的整个生命周期。以下简要总结一下这三点，详细介绍可以移步Docker 从入门到实践对应章节。

### 2.2 Docker 三剑客