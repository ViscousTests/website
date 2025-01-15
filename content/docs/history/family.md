# Family History


<style>
.mermaid{
  width: 500%;
}
</style>

```mermaid
---
title: Family Tree
---
flowchart TB;

  %% Types of nodes with distinctive styles
  classDef person fill:#bbf,stroke-width:4px
  classDef union fill:#f9f

  subgraph mother
  %% m-school["Went to school"]
  end
  %% style mother fill:#bbf
  class mother person
  class m-school person
  mother-->mf-married

  subgraph father
  end
  father-->mf-married

  mf-married["Married"]

  %% Pranute Branch %%

  mf-married-->pranute
  subgraph pranute["Pranute"]
  end

  pranute-->aidas
  subgraph aidas["Aidas"]
  end

  pranute-->daina
  subgraph daina["Daina"]
  end
  daina-->daina-aloyzas-married

  subgraph aloyzas["Aloyzas"]
  end
  aloyzas-->daina-aloyzas-married

  daina-aloyzas-married["Married"]

  daina-aloyzas-married-->marius
  subgraph marius["Marius"]
  end

  daina-aloyzas-married-->vilija
  subgraph vilija["Vilija"]
  end

  daina-aloyzas-married-->svaja
  subgraph svaja["Svaja"]
  end

  %% Zuzana Branch %%

  mf-married-->zuzana
  subgraph zuzana["Zuzana"]
  end

  zuzana-->antanas
  subgraph antanas["Antanas"]
  end

  subgraph nijole["Nijole (Mamulyte)"]
  end

  nijole-->antanas-nijole-married
  antanas-->antanas-nijole-married
  subgraph antanas-nijole-married["Married"]
      direction LR
      nijole-austria["Lived in Austrian Barn"]
      nijole-austria-->nijole-us
      nijole-us["Travelled to US"]
  end

  subgraph rim["Rimvydas"]
  end
  rim-->|Invited| palunas-seattle 

  antanas-nijole-married-->neris
  subgraph neris["🌊 Neris"]
  end

  subgraph andy["Andy"]
  end

  neris-->neris-andy-married
  andy-->neris-andy-married
  subgraph neris-andy-married
  palunas-seattle["Moved to Seattle"]
  end

  neris-->laura-neris-married
  laura-->laura-neris-married
  subgraph laura-neris-married
  orcas-move["Moved to Orcas 🐋"]
  end

  neris-andy-married-->kovas
  kovas["🐦 Kovas"]@{ shape: braces }
  kovas-->kovas-claire-married

  subgraph claire["🌤️ Claire"]
  end
  claire-->kovas-claire-married

  kovas-claire-married["Married"]

  neris-andy-married-->vaiva
  subgraph vaiva["🐴 Vaiva 🌈"]
  end

```

## Ideas for Improvement

 - Make subgraphs collapsible when https://github.com/mermaid-js/mermaid/issues/5508 is done
 - Make it so that each node's X position maps to the year it occurred, making the chart also effectively a timeline.
 - Fiddle with subgraph shapes once https://github.com/mermaid-js/mermaid/issues/2752 is done

Categories: [History]({{< relref "/" >}}?History=true)
