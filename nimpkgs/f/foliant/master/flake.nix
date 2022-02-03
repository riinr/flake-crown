{
  description = ''Documentation generator that produces pdf and docx from Markdown. Uses Pandoc and LaTeX behind the scenes.'';
  inputs.src-foliant-master.flake = false;
  inputs.src-foliant-master.type = "github";
  inputs.src-foliant-master.owner = "foliant-docs";
  inputs.src-foliant-master.repo = "foliant-nim";
  inputs.src-foliant-master.ref = "refs/heads/master";
  
  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."yaml".url = "path:../../../y/yaml";
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";

  outputs = { self, nixpkgs, src-foliant-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-foliant-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-foliant-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}