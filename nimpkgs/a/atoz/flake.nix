{
  description = ''Amazon Web Services (AWS) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."atoz-master".dir   = "master";
  inputs."atoz-master".owner = "nim-nix-pkgs";
  inputs."atoz-master".ref   = "master";
  inputs."atoz-master".repo  = "atoz";
  inputs."atoz-master".type  = "github";
  inputs."atoz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-1_0_0".dir   = "1_0_0";
  inputs."atoz-1_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-1_0_0".ref   = "master";
  inputs."atoz-1_0_0".repo  = "atoz";
  inputs."atoz-1_0_0".type  = "github";
  inputs."atoz-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-1_0_3".dir   = "1_0_3";
  inputs."atoz-1_0_3".owner = "nim-nix-pkgs";
  inputs."atoz-1_0_3".ref   = "master";
  inputs."atoz-1_0_3".repo  = "atoz";
  inputs."atoz-1_0_3".type  = "github";
  inputs."atoz-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2533_0_0".dir   = "2533_0_0";
  inputs."atoz-2533_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2533_0_0".ref   = "master";
  inputs."atoz-2533_0_0".repo  = "atoz";
  inputs."atoz-2533_0_0".type  = "github";
  inputs."atoz-2533_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2533_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2533_0_1".dir   = "2533_0_1";
  inputs."atoz-2533_0_1".owner = "nim-nix-pkgs";
  inputs."atoz-2533_0_1".ref   = "master";
  inputs."atoz-2533_0_1".repo  = "atoz";
  inputs."atoz-2533_0_1".type  = "github";
  inputs."atoz-2533_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2533_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2538_0_1".dir   = "2538_0_1";
  inputs."atoz-2538_0_1".owner = "nim-nix-pkgs";
  inputs."atoz-2538_0_1".ref   = "master";
  inputs."atoz-2538_0_1".repo  = "atoz";
  inputs."atoz-2538_0_1".type  = "github";
  inputs."atoz-2538_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2538_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2543_0_0".dir   = "2543_0_0";
  inputs."atoz-2543_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2543_0_0".ref   = "master";
  inputs."atoz-2543_0_0".repo  = "atoz";
  inputs."atoz-2543_0_0".type  = "github";
  inputs."atoz-2543_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2543_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2543_0_1".dir   = "2543_0_1";
  inputs."atoz-2543_0_1".owner = "nim-nix-pkgs";
  inputs."atoz-2543_0_1".ref   = "master";
  inputs."atoz-2543_0_1".repo  = "atoz";
  inputs."atoz-2543_0_1".type  = "github";
  inputs."atoz-2543_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2543_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2556_0_0".dir   = "2556_0_0";
  inputs."atoz-2556_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2556_0_0".ref   = "master";
  inputs."atoz-2556_0_0".repo  = "atoz";
  inputs."atoz-2556_0_0".type  = "github";
  inputs."atoz-2556_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2556_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2556_0_1".dir   = "2556_0_1";
  inputs."atoz-2556_0_1".owner = "nim-nix-pkgs";
  inputs."atoz-2556_0_1".ref   = "master";
  inputs."atoz-2556_0_1".repo  = "atoz";
  inputs."atoz-2556_0_1".type  = "github";
  inputs."atoz-2556_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2556_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2561_0_0".dir   = "2561_0_0";
  inputs."atoz-2561_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2561_0_0".ref   = "master";
  inputs."atoz-2561_0_0".repo  = "atoz";
  inputs."atoz-2561_0_0".type  = "github";
  inputs."atoz-2561_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2561_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2561_0_1".dir   = "2561_0_1";
  inputs."atoz-2561_0_1".owner = "nim-nix-pkgs";
  inputs."atoz-2561_0_1".ref   = "master";
  inputs."atoz-2561_0_1".repo  = "atoz";
  inputs."atoz-2561_0_1".type  = "github";
  inputs."atoz-2561_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2561_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2570_0_0".dir   = "2570_0_0";
  inputs."atoz-2570_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2570_0_0".ref   = "master";
  inputs."atoz-2570_0_0".repo  = "atoz";
  inputs."atoz-2570_0_0".type  = "github";
  inputs."atoz-2570_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2570_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2571_0_0".dir   = "2571_0_0";
  inputs."atoz-2571_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2571_0_0".ref   = "master";
  inputs."atoz-2571_0_0".repo  = "atoz";
  inputs."atoz-2571_0_0".type  = "github";
  inputs."atoz-2571_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2571_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2572_0_1".dir   = "2572_0_1";
  inputs."atoz-2572_0_1".owner = "nim-nix-pkgs";
  inputs."atoz-2572_0_1".ref   = "master";
  inputs."atoz-2572_0_1".repo  = "atoz";
  inputs."atoz-2572_0_1".type  = "github";
  inputs."atoz-2572_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2572_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2579_0_0".dir   = "2579_0_0";
  inputs."atoz-2579_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2579_0_0".ref   = "master";
  inputs."atoz-2579_0_0".repo  = "atoz";
  inputs."atoz-2579_0_0".type  = "github";
  inputs."atoz-2579_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2579_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2579_0_1".dir   = "2579_0_1";
  inputs."atoz-2579_0_1".owner = "nim-nix-pkgs";
  inputs."atoz-2579_0_1".ref   = "master";
  inputs."atoz-2579_0_1".repo  = "atoz";
  inputs."atoz-2579_0_1".type  = "github";
  inputs."atoz-2579_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2579_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2580_0_0".dir   = "2580_0_0";
  inputs."atoz-2580_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2580_0_0".ref   = "master";
  inputs."atoz-2580_0_0".repo  = "atoz";
  inputs."atoz-2580_0_0".type  = "github";
  inputs."atoz-2580_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2580_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2587_0_0".dir   = "2587_0_0";
  inputs."atoz-2587_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2587_0_0".ref   = "master";
  inputs."atoz-2587_0_0".repo  = "atoz";
  inputs."atoz-2587_0_0".type  = "github";
  inputs."atoz-2587_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2587_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2590_0_0".dir   = "2590_0_0";
  inputs."atoz-2590_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2590_0_0".ref   = "master";
  inputs."atoz-2590_0_0".repo  = "atoz";
  inputs."atoz-2590_0_0".type  = "github";
  inputs."atoz-2590_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2590_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2595_0_0".dir   = "2595_0_0";
  inputs."atoz-2595_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2595_0_0".ref   = "master";
  inputs."atoz-2595_0_0".repo  = "atoz";
  inputs."atoz-2595_0_0".type  = "github";
  inputs."atoz-2595_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2595_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2596_0_0".dir   = "2596_0_0";
  inputs."atoz-2596_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2596_0_0".ref   = "master";
  inputs."atoz-2596_0_0".repo  = "atoz";
  inputs."atoz-2596_0_0".type  = "github";
  inputs."atoz-2596_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2596_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2597_0_0".dir   = "2597_0_0";
  inputs."atoz-2597_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2597_0_0".ref   = "master";
  inputs."atoz-2597_0_0".repo  = "atoz";
  inputs."atoz-2597_0_0".type  = "github";
  inputs."atoz-2597_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2597_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2599_0_0".dir   = "2599_0_0";
  inputs."atoz-2599_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2599_0_0".ref   = "master";
  inputs."atoz-2599_0_0".repo  = "atoz";
  inputs."atoz-2599_0_0".type  = "github";
  inputs."atoz-2599_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2599_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2600_0_0".dir   = "2600_0_0";
  inputs."atoz-2600_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2600_0_0".ref   = "master";
  inputs."atoz-2600_0_0".repo  = "atoz";
  inputs."atoz-2600_0_0".type  = "github";
  inputs."atoz-2600_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2600_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2601_0_0".dir   = "2601_0_0";
  inputs."atoz-2601_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2601_0_0".ref   = "master";
  inputs."atoz-2601_0_0".repo  = "atoz";
  inputs."atoz-2601_0_0".type  = "github";
  inputs."atoz-2601_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2601_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2602_0_0".dir   = "2602_0_0";
  inputs."atoz-2602_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2602_0_0".ref   = "master";
  inputs."atoz-2602_0_0".repo  = "atoz";
  inputs."atoz-2602_0_0".type  = "github";
  inputs."atoz-2602_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2602_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2603_0_0".dir   = "2603_0_0";
  inputs."atoz-2603_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2603_0_0".ref   = "master";
  inputs."atoz-2603_0_0".repo  = "atoz";
  inputs."atoz-2603_0_0".type  = "github";
  inputs."atoz-2603_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2603_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2604_0_0".dir   = "2604_0_0";
  inputs."atoz-2604_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2604_0_0".ref   = "master";
  inputs."atoz-2604_0_0".repo  = "atoz";
  inputs."atoz-2604_0_0".type  = "github";
  inputs."atoz-2604_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2604_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2605_0_0".dir   = "2605_0_0";
  inputs."atoz-2605_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2605_0_0".ref   = "master";
  inputs."atoz-2605_0_0".repo  = "atoz";
  inputs."atoz-2605_0_0".type  = "github";
  inputs."atoz-2605_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2605_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2606_0_0".dir   = "2606_0_0";
  inputs."atoz-2606_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2606_0_0".ref   = "master";
  inputs."atoz-2606_0_0".repo  = "atoz";
  inputs."atoz-2606_0_0".type  = "github";
  inputs."atoz-2606_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2606_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2606_0_1".dir   = "2606_0_1";
  inputs."atoz-2606_0_1".owner = "nim-nix-pkgs";
  inputs."atoz-2606_0_1".ref   = "master";
  inputs."atoz-2606_0_1".repo  = "atoz";
  inputs."atoz-2606_0_1".type  = "github";
  inputs."atoz-2606_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2606_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2609_0_1".dir   = "2609_0_1";
  inputs."atoz-2609_0_1".owner = "nim-nix-pkgs";
  inputs."atoz-2609_0_1".ref   = "master";
  inputs."atoz-2609_0_1".repo  = "atoz";
  inputs."atoz-2609_0_1".type  = "github";
  inputs."atoz-2609_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2609_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2609_0_2".dir   = "2609_0_2";
  inputs."atoz-2609_0_2".owner = "nim-nix-pkgs";
  inputs."atoz-2609_0_2".ref   = "master";
  inputs."atoz-2609_0_2".repo  = "atoz";
  inputs."atoz-2609_0_2".type  = "github";
  inputs."atoz-2609_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2609_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2610_0_0".dir   = "2610_0_0";
  inputs."atoz-2610_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2610_0_0".ref   = "master";
  inputs."atoz-2610_0_0".repo  = "atoz";
  inputs."atoz-2610_0_0".type  = "github";
  inputs."atoz-2610_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2610_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2612_0_0".dir   = "2612_0_0";
  inputs."atoz-2612_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2612_0_0".ref   = "master";
  inputs."atoz-2612_0_0".repo  = "atoz";
  inputs."atoz-2612_0_0".type  = "github";
  inputs."atoz-2612_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2612_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2613_0_0".dir   = "2613_0_0";
  inputs."atoz-2613_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2613_0_0".ref   = "master";
  inputs."atoz-2613_0_0".repo  = "atoz";
  inputs."atoz-2613_0_0".type  = "github";
  inputs."atoz-2613_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2613_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2614_0_0".dir   = "2614_0_0";
  inputs."atoz-2614_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2614_0_0".ref   = "master";
  inputs."atoz-2614_0_0".repo  = "atoz";
  inputs."atoz-2614_0_0".type  = "github";
  inputs."atoz-2614_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2614_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2614_0_1".dir   = "2614_0_1";
  inputs."atoz-2614_0_1".owner = "nim-nix-pkgs";
  inputs."atoz-2614_0_1".ref   = "master";
  inputs."atoz-2614_0_1".repo  = "atoz";
  inputs."atoz-2614_0_1".type  = "github";
  inputs."atoz-2614_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2614_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2616_0_0".dir   = "2616_0_0";
  inputs."atoz-2616_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2616_0_0".ref   = "master";
  inputs."atoz-2616_0_0".repo  = "atoz";
  inputs."atoz-2616_0_0".type  = "github";
  inputs."atoz-2616_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2616_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2617_0_0".dir   = "2617_0_0";
  inputs."atoz-2617_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2617_0_0".ref   = "master";
  inputs."atoz-2617_0_0".repo  = "atoz";
  inputs."atoz-2617_0_0".type  = "github";
  inputs."atoz-2617_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2617_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2618_0_0".dir   = "2618_0_0";
  inputs."atoz-2618_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2618_0_0".ref   = "master";
  inputs."atoz-2618_0_0".repo  = "atoz";
  inputs."atoz-2618_0_0".type  = "github";
  inputs."atoz-2618_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2618_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2619_0_0".dir   = "2619_0_0";
  inputs."atoz-2619_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2619_0_0".ref   = "master";
  inputs."atoz-2619_0_0".repo  = "atoz";
  inputs."atoz-2619_0_0".type  = "github";
  inputs."atoz-2619_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2619_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2619_0_1".dir   = "2619_0_1";
  inputs."atoz-2619_0_1".owner = "nim-nix-pkgs";
  inputs."atoz-2619_0_1".ref   = "master";
  inputs."atoz-2619_0_1".repo  = "atoz";
  inputs."atoz-2619_0_1".type  = "github";
  inputs."atoz-2619_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2619_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2621_0_0".dir   = "2621_0_0";
  inputs."atoz-2621_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2621_0_0".ref   = "master";
  inputs."atoz-2621_0_0".repo  = "atoz";
  inputs."atoz-2621_0_0".type  = "github";
  inputs."atoz-2621_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2621_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2622_0_0".dir   = "2622_0_0";
  inputs."atoz-2622_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2622_0_0".ref   = "master";
  inputs."atoz-2622_0_0".repo  = "atoz";
  inputs."atoz-2622_0_0".type  = "github";
  inputs."atoz-2622_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2622_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2626_0_0".dir   = "2626_0_0";
  inputs."atoz-2626_0_0".owner = "nim-nix-pkgs";
  inputs."atoz-2626_0_0".ref   = "master";
  inputs."atoz-2626_0_0".repo  = "atoz";
  inputs."atoz-2626_0_0".type  = "github";
  inputs."atoz-2626_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2626_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2626_1_0".dir   = "2626_1_0";
  inputs."atoz-2626_1_0".owner = "nim-nix-pkgs";
  inputs."atoz-2626_1_0".ref   = "master";
  inputs."atoz-2626_1_0".repo  = "atoz";
  inputs."atoz-2626_1_0".type  = "github";
  inputs."atoz-2626_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2626_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2626_3_0".dir   = "2626_3_0";
  inputs."atoz-2626_3_0".owner = "nim-nix-pkgs";
  inputs."atoz-2626_3_0".ref   = "master";
  inputs."atoz-2626_3_0".repo  = "atoz";
  inputs."atoz-2626_3_0".type  = "github";
  inputs."atoz-2626_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2626_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2626_4_0".dir   = "2626_4_0";
  inputs."atoz-2626_4_0".owner = "nim-nix-pkgs";
  inputs."atoz-2626_4_0".ref   = "master";
  inputs."atoz-2626_4_0".repo  = "atoz";
  inputs."atoz-2626_4_0".type  = "github";
  inputs."atoz-2626_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2626_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}