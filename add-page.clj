#!/usr/bin/env bb

; Need to `sudo apt install ddgr jq`

(require '[clojure.java.shell :refer [sh]]
         '[clojure.string :as st]
         '[clojure.tools.cli :refer [parse-opts]])


(def cli-options
  ;; An option with a required argument
  [["-d" "--directory DIR" "Directory to add in"]
   ["-h" "--help"]])

(def directory (clojure.java.io/file "."))

(def args (:arguments (parse-opts *command-line-args* cli-options)))
(def directory
  (:directory (:options (parse-opts *command-line-args* cli-options))))
(def page-name (st/trim (apply str args)))
(def file-name
  (str "content/docs/" directory "/" (st/replace page-name " " "-") ".md"))

(def ddgr-cmd-prefix
  "ddgr --expand --json -n 1 wikipedia ")

(def jq-get-first-url
  "jq --raw-output '.[0] | .url'")

(def cmd
  (str ddgr-cmd-prefix page-name " | " jq-get-first-url))
  
(def url
  (st/trim (:out (sh "bash" "-c" cmd))))

(def page-contents (str "# [" page-name "](" url ")\n\n"))

(println (str "Writing to " file-name ":\n" page-contents))
(spit file-name page-contents)
  
