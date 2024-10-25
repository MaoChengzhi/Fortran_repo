cmao@IWF2-074:~/software/prodimo/src_develop$ git config user.name "chengzhi"
git config user.email "maochengzhi1@gmail.com" 
git config credential.helper store 
git config pull.rebase true
git config pull.merge false 
git config pull.ff only 
git config push.default current
cmao@IWF2-074:~/software/prodimo/src_develop$ git pull
fatal: Not possible to fast-forward, aborting.
cmao@IWF2-074:~/software/prodimo/src_develop$ git status .
On branch adsorption_freq
Your branch and 'origin/master' have diverged,
and have 1 and 1 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)

nothing to commit, working tree clean
cmao@IWF2-074:~/software/prodimo/src_develop$ git pull --rebase
Successfully rebased and updated refs/heads/adsorption_freq.
cmao@IWF2-074:~/software/prodimo/src_develop$ git pull
Already up to date.
cmao@IWF2-074:~/software/prodimo/src_develop$ git log
commit a3a2a6a4b0346558ce460742effce7f656024f52 (HEAD -> adsorption_freq)
Author: Chengzhi Mao <maochengzhi1@gmail.com>
Date:   Thu Oct 24 19:11:43 2024 +0200

    Refactor code to handle Minissale's adsorption energies and vibration frequencies from file

commit 8e290d9da3a56dc53ea21744ab91f26b062f2ffe (origin/master, origin/HEAD, master)
Author: Peter Woitke <peter.woitke@oeaw.ac.at>
Date:   Fri Sep 13 17:05:15 2024 +0200

    correct Ar + H3+ reaction, add Ne + CRP reaction, re-numbering reactions

commit 288f6a4a9cc27980dec9a225761e7b337a7e35f3
Author: Peter Woitke <peter.woitke@oeaw.ac.at>
Date:   Tue Sep 3 08:29:04 2024 +0200

    add neutral-neutral SiHx reactions from Jayatee's paper

commit 4e7fcf6977ea3e72b46067be635ce9532de4c62f
Author: Peter Woitke <peter.woitke@oeaw.ac.at>
Date:   Tue Aug 20 18:30:36 2024 +0200

    solve compiling issue with old ifort

commit 95cc83c5616748173797252820a0dfb0de61fe1d
Author: Peter Woitke <peter.woitke@oeaw.ac.at>
Date:   Sun Aug 18 21:29:56 2024 +0200

    revision thermo-chemical data: improved Heat_of_formation.dat after tests with BURCAT, NIST, ATcT

commit bdd1faa8acedbf8227eb4f33486cfb6e83197df5
Author: Peter Woitke <peter.woitke@oeaw.ac.at>
Date:   Sat Aug 17 16:05:00 2024 +0200

    avoid setting dHf0 values in init_reactions.f

commit ab00c1a3d9634560131560af8b2e99a1ab7283cc
Author: Peter Woitke <peter.woitke@oeaw.ac.at>
Date:   Thu Aug 15 18:49:47 2024 +0200

    allow ProDiMo with equil_chem using BURCAT data

commit 99a9925e118bebe4a2721a25b935c65b3862b6e3
Author: Peter Woitke <peter.woitke@oeaw.ac.at>
Date:   Thu Aug 15 18:48:12 2024 +0200

    update GGchem dispol datafiles

commit 09c86497876215edc46b640e368e8e8716ad072f
Author: Peter Woitke <peter.woitke@oeaw.ac.at>
Date:   Wed Aug 14 11:41:47 2024 +0200

    update laptop makefile

commit 35e6e340bafbcdb1bcbbe18c7468111f9290a2d7
Author: Peter Woitke <peter.woitke@oeaw.ac.at>
Date:   Wed Aug 14 11:31:48 2024 +0200

    pick up HN2 thermo-chemical data

commit f11bdcd6a3fcd110044aadee6592cd6efe82e690
Merge: 1298b583 4e799533
cmao@IWF2-074:~/software/prodimo/src_develop$ git branch
* adsorption_freq
  master
cmao@IWF2-074:~/software/prodimo/src_develop$ git branch --set-upstream-to=origin adsorption_freq
Branch 'adsorption_freq' set up to track remote branch 'master' from 'origin'.
cmao@IWF2-074:~/software/prodimo/src_develop$ git push
Enumerating objects: 21, done.
Counting objects: 100% (21/21), done.
Delta compression using up to 16 threads
Compressing objects: 100% (11/11), done.
Writing objects: 100% (11/11), 3.02 KiB | 3.02 MiB/s, done.
Total 11 (delta 10), reused 0 (delta 0), pack-reused 0
remote: 
remote: To create a merge request for adsorption_freq, visit:
remote:   https://gitlab.astro.rug.nl/prodimo/prodimo/-/merge_requests/new?merge_request%5Bsource_branch%5D=adsorption_freq
remote: 
To https://gitlab.astro.rug.nl/prodimo/prodimo.git
 * [new branch]        adsorption_freq -> adsorption_freq
cmao@IWF2-074:~/software/prodimo/src_develop$ 
