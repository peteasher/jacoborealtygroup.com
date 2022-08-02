<?php get_header(); ?>
<!-- slideshow -->
<section class="hp-slideshow">
  <div class="region-slideshow-container">

    <h2 class="hidden">Slideshow</h2>
    <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Hp Slideshow") ) : ?>
    <?php endif ?>
  </div>
</section>
<!-- slideshow end -->
<div class="hp-welcome-quick-search">
  <!-- quick-search -->
  <section class="hp-quick-search">
    <div class="region-quick-search-container">
      <div class="site-bg 
    

      site-rgba
    

    ">
        <canvas class="lazyload" width="1369px" height="230px"
          data-bgset="<?php echo get_stylesheet_directory_uri(); ?>/images/quick-search-bg.jpg"></canvas>
      </div>
      <div class="quick-search-form">
        <div class="qs-item site-title">
          <h3>Quick</h3>
          <h2>Search</h2>
        </div>
        <div class="qs-item">
          <select aria-label="qs-fields">
            <option value="SFR,CND">House / Condo</option>
            <option value="SFR">House Only</option>
            <option value="CND">Condo Only</option>
            <option value="RI">Multi-Family</option>
            <option value="COM">Commercial</option>
            <option value="LL">Lots / Land</option>
            <option value="RI">Multi-Unit Residential</option>
            <option value="MH">Mobile Home</option>
            <option value="RNT">Rental</option>
            <option value="FRM">Farms</option>
          </select>
        </div>
        <div class="qs-item">
          <select aria-label="qs-fields">
            <option value="Zip">Select City. Zip</option>
            <option value="Zip">Select City. Zip</option>
            <option value="Zip">Select City. Zip</option>
            <option value="Zip">Select City. Zip</option>
            <option value="Zip">Select City. Zip</option>
            <option value="Zip">Select City. Zip</option>
          </select>
        </div>
        <div class="qs-item">
          <select aria-label="qs-fields">
            <option value="">Bedrooms</option>
            <option value="1">1+</option>
            <option value="2">2+</option>
            <option value="3">3+</option>
            <option value="4">4+</option>
            <option value="5">5+</option>
          </select>
        </div>
        <div class="qs-item">
          <select aria-label="qs-fields">
            <option value="">Bathrooms</option>
            <option value="1">1+</option>
            <option value="2">2+</option>
            <option value="3">3+</option>
            <option value="4">4+</option>
            <option value="5">5+</option>
          </select>
        </div>
        <div class="qs-item">
          <input type="text" placeholder="Min $" aria-label="qs-fields" />
        </div>
        <div class="qs-item">
          <input type="text" placeholder="Max $" aria-label="qs-fields" />
        </div>
        <div class="qs-item">
          <div class="site-btn-primary qs-btn"> <input type="submit" value="Search +" aria-label="qs-submit" /> </div>
        </div>
        <div class="qs-item">
          <a href="[blogurl]" class="site-btn-primary" aria-label="qs-btn"> Advanced </a>
        </div>
      </div>
    </div>
  </section>
  <!-- quick-search end -->
  <!-- welcome -->
  <section class="hp-welcome">
    <div class="region-welcome-container">
      <div class="site-bg site-rgba">
        <canvas class="lazyload" width="1600px" height="1154px"
          data-bgset="<?php echo get_stylesheet_directory_uri(); ?>/images/welcome-bg.jpg"></canvas>
      </div>
      <div class="welcome-primary-section">
        <img alt="agent" class="img-responsive"
          src="<?php echo get_stylesheet_directory_uri() ?>/images/welcome-agent.png" />
      </div>
      <div class="welcome-secondary-section">
        <div class="site-title">
          <h3>Meet</h3>
          <h2>Michael Jacobo</h2>
        </div>
        <p class="first-p">Michael Jacobo is the owner of the Jacobo Realty Group with Berkshire Hathaway Home Services. Michael has
          continuously ranked among the top 1.5% of all Realtors nationwide and top 100 within the company. This is a
          tremendous honor considering Berkshire Hathaway Home Services employs over 60,000 agents.
        </p>
        <p>Michael, a Southern California native, has been a full time real estate agent for over 20 years and has been
          involved in more than 1,000 real estate transactions. Michael specializes in negotiation, strategic planning
          and
          motivating our dynamic team to a higher level of success. Being a very competitive person, Michael's motto is
          "Never, never, never give up!".
        </p>
        <p>Michael's greatest pleasure is spending time with family and of course his daughters Alyssa, age 14 and
          newborn, Julianna. He also enjoys sports whenever possible and loves competing in triathlons, marathons,
          playing
          soccer or out playing a round of golf.
        </p>
        <p>Michael is also bilingual for any of our Spanish speaking clients we may have and he belongs to the National
          Association of Hispanic Real Estate Professionals.
        </p>
        <a href="[blogurl]" aria-label="READ MORE" class="site-btn">LEARN MORE +</a>
      </div>
    </div>
  </section>
  <!-- welcome end -->
</div>
<!-- team -->
<section class="hp-team">
  <div class="region-team-container">
    <div class="site-bg site-rgba">
      <canvas class="lazyload" width="1001px" height="301px"
        data-bgset="<?php echo get_stylesheet_directory_uri(); ?>/images/testimonials-bg-logo.jpg"></canvas>
    </div>
    <div class="site-title">
      <h3>Meet</h3>
      <h2>The Team</h2>
    </div>
    <div class="team-slick">
      <a href="[blogurl]" aria-label="team" class="team-item">
        <div class="team-img canvas-wrapper">
          <canvas width="376" height="407"></canvas>
          <img alt="team" class="img-team canvas-img img-responsive lazyload"
            src="<?php echo get_stylesheet_directory_uri() ?>/images/team-1.jpg" />
        </div>
        <div class="team-content">
          <em>Kati Mendoza</em>
          <p>Agent / Realtor</p>
        </div>
        <div class="team-content-hover">
          <span>Read More +</span>
        </div>
      </a>
      <a href="[blogurl]" aria-label="team" class="team-item">
        <div class="team-img canvas-wrapper">
          <canvas width="376" height="407"></canvas>
          <img alt="team" class="img-team canvas-img img-responsive lazyload"
            src="<?php echo get_stylesheet_directory_uri() ?>/images/team-2.jpg" />
        </div>
        <div class="team-content">
          <em>Michele Hannemann</em>
          <p>Sales Assciate</p>
        </div>   
         <div class="team-content-hover">
          <span>Read More +</span>
        </div>
      </a>
      <a href="[blogurl]" aria-label="team" class="team-item">
        <div class="team-img canvas-wrapper">
          <canvas width="376" height="407"></canvas>
          <img alt="team" class="img-team canvas-img img-responsive lazyload"
            src="<?php echo get_stylesheet_directory_uri() ?>/images/team-3.jpg" />
        </div>
        <div class="team-content-hover">
          <span>Read More +</span>
        </div>
        <div class="team-content">
          <em>Baris Yucelt</em>
          <p>Realtor / Sales Associate</p>
        </div>
      </a>
      <a href="[blogurl]" aria-label="team" class="team-item">
        <div class="team-img canvas-wrapper">
          <canvas width="376" height="407"></canvas>
          <img alt="team" class="img-team canvas-img img-responsive lazyload"
            src="<?php echo get_stylesheet_directory_uri() ?>/images/team-1.jpg" />
        </div>
        <div class="team-content">
          <em>Kati Mendoza</em>
          <p>Agent / Realtor</p>
        </div>
        <div class="team-content-hover">
          <span>Read More +</span>
        </div>
      </a>
    </div>
    <div class="team-slick-arrow">
      <span class="ai-font-arrow-h-p prev"></span>
      <a href="[blogurl]" class="site-btn" aria-label="VIEW ALL team">VIEW ALL TEAMS +</a>
      <span class="ai-font-arrow-h-n next"></span>
    </div>

  </div>
</section>
<!-- team end -->
<!-- properties -->
<section class="hp-properties">
  <div class="region-properties-container">
    <div class="site-title">
      <h3>Featured</h3>
      <h2>Listings</h2>
    </div>
    <div class="properties-slick">
      <a href="[blogurl]" aria-label="properties" class="properties-item">
        <div class="properties-img canvas-wrapper">
          <canvas width="470" height="374"></canvas>
          <img alt="properties" class="img-properties canvas-img img-responsive lazyload"
            src="<?php echo get_stylesheet_directory_uri() ?>/images/properties-1.jpg" />
        </div>
        <div class="properties-content">
          <h3>$2,200,000</h3>
          <p>3475 Ann Dr., Carlsbad, CA 92008</p>
          <div class="bbs">
            <span>2 Beds</span>
            <span>4 Baths</span>
            <span>2,457 SqFt.</span>
          </div>
          <span class="site-btn">View More</span>
        </div>
      </a>
      <a href="[blogurl]" aria-label="properties" class="properties-item">
        <div class="properties-img canvas-wrapper">
          <canvas width="470" height="374"></canvas>
          <img alt="properties" class="img-properties canvas-img img-responsive lazyload"
            src="<?php echo get_stylesheet_directory_uri() ?>/images/properties-2.jpg" />
        </div>
        <div class="properties-content">
          <h3>$2,140,000</h3>
          <p>2625 Wadsworth Street, Carlsbad, CA 92010</p>
          <div class="bbs">
            <span>4 Beds</span>
            <span>5 Baths</span>
            <span>3,051 SqFt.</span>
          </div>
          <span class="site-btn">View More</span>
        </div>
      </a>
      <a href="[blogurl]" aria-label="properties" class="properties-item">
        <div class="properties-img canvas-wrapper">
          <canvas width="470" height="374"></canvas>
          <img alt="properties" class="img-properties canvas-img img-responsive lazyload"
            src="<?php echo get_stylesheet_directory_uri() ?>/images/properties-3.jpg" />
        </div>
        <div class="properties-content">
          <h3>$1,999,999</h3>
          <p>2833 Esturion Street, Carlsbad, CA 92009</p>
          <div class="bbs">
            <span>4 Beds</span>
            <span>4 Baths</span>
            <span>3,938 SqFt.</span>
          </div>
          <span class="site-btn">View More</span>
        </div>
      </a>
      <a href="[blogurl]" aria-label="properties" class="properties-item">
        <div class="properties-img canvas-wrapper">
          <canvas width="470" height="374"></canvas>
          <img alt="properties" class="img-properties canvas-img img-responsive lazyload"
            src="<?php echo get_stylesheet_directory_uri() ?>/images/properties-1.jpg" />
        </div>
        <div class="properties-content">
          <h3>$2,200,000</h3>
          <p>3475 Ann Dr., Carlsbad, CA 92008</p>
          <div class="bbs">
            <span>2 Beds</span>
            <span>4 Baths</span>
            <span>2,457 SqFt.</span>
          </div>
          <span class="site-btn">View More</span>
        </div>
      </a>
    </div>
    <div class="properties-slick-arrow">
      <span class="ai-font-arrow-h-p prev"></span>
      <a href="[blogurl]" class="site-btn" aria-label="View All Listings">View All Listings</a>
      <span class="ai-font-arrow-h-n next"></span>
    </div>

  </div>
  <div class="site-bg site-rgba">
    <canvas class="lazyload" width="1600px" height="925px"
      data-bgset="<?php echo get_stylesheet_directory_uri(); ?>/images/properties-bg.jpg"></canvas>
  </div>
</section>
<!-- properties end -->
<!-- communities -->
<section class="hp-communities">
  <div class="region-communities-container">
    <div class="site-bg 
    

      site-rgba
    ">
      <canvas class="lazyload" width="1600px" height="1169px"
        data-bgset="<?php echo get_stylesheet_directory_uri(); ?>/images/communities-bg-1.jpg"></canvas>
    </div>
    <div class="site-title">
      <h3>Featured</h3>
      <h2>Communities</h2>
    </div>
    <div class="communities-gallery-image-container">
      <a href="[blogurl]" aria-label="communities-image" class="communities-image">
        <div class="communities-item canvas-wrapper"> <canvas width="440" height="344"></canvas> <img
            alt="communities-image" class="canvas-img img-responsive lazyload"
            src=" <?php echo get_stylesheet_directory_uri() ?>/images/communities-1.jpg">
          <em>San Marcos</em>
          <em class="hover-title">San Marcos</em>
          <div class="communities-btn-hover">
            <span>Explore +</span>
          </div>
        </div>
      </a>
      <a href="[blogurl]" aria-label="communities-image" class="communities-image">
        <div class="communities-item canvas-wrapper"> <canvas width="440" height="344"></canvas> <img
            alt="communities-image" class="canvas-img img-responsive lazyload"
            src=" <?php echo get_stylesheet_directory_uri() ?>/images/communities-2.jpg">
          <em>Carlsbad</em>
           <em class="hover-title">Carlsbad</em>
              <div class="communities-btn-hover">
            <span>Explore +</span>
          </div>
        </div>
      </a>
      <a href="[blogurl]" aria-label="communities-image" class="communities-image">
        <div class="communities-item canvas-wrapper"> <canvas width="440" height="344"></canvas> <img
            alt="communities-image" class="canvas-img img-responsive lazyload"
            src=" <?php echo get_stylesheet_directory_uri() ?>/images/communities-3.jpg">
          <em>Encinitas</em>
           <em class="hover-title">Encinitas</em>
              <div class="communities-btn-hover">
            <span>Explore +</span>
          </div>
        </div>
      </a>
      <a href="[blogurl]" aria-label="communities-image" class="communities-image">
        <div class="communities-item canvas-wrapper"> <canvas width="440" height="344"></canvas> <img
            alt="communities-image" class="canvas-img img-responsive lazyload"
            src=" <?php echo get_stylesheet_directory_uri() ?>/images/communities-4.jpg">
          <em>Solana Beach</em>
           <em class="hover-title">Solana Beach</em>
              <div class="communities-btn-hover">
            <span>Explore +</span>
          </div>
        </div>
      </a>
      <a href="[blogurl]" aria-label="communities-image" class="communities-image">
        <div class="communities-item canvas-wrapper"> <canvas width="440" height="344"></canvas> <img
            alt="communities-image" class="canvas-img img-responsive lazyload"
            src=" <?php echo get_stylesheet_directory_uri() ?>/images/communities-5.jpg">
          <em> Del Mar</em>
           <em class="hover-title"> Del Mar</em>
              <div class="communities-btn-hover">
            <span>Explore +</span>
          </div>
        </div>
      </a>
      <a href="[blogurl]" aria-label="communities-image" class="communities-image">
        <div class="communities-item canvas-wrapper"> <canvas width="440" height="344"></canvas> <img
            alt="communities-image" class="canvas-img img-responsive lazyload"
            src=" <?php echo get_stylesheet_directory_uri() ?>/images/communities-6.jpg">
          <em>Vista</em>
           <em class="hover-title">Vista</em>
              <div class="communities-btn-hover">
            <span>Explore +</span>
          </div>
        </div>
      </a>
      <a href="[blogurl]" aria-label="communities-image" class="communities-image">
        <div class="communities-item canvas-wrapper"> <canvas width="440" height="344"></canvas> <img
            alt="communities-image" class="canvas-img img-responsive lazyload"
            src=" <?php echo get_stylesheet_directory_uri() ?>/images/communities-7.jpg">
          <em>Oceanside</em>
           <em class="hover-title">Oceanside</em>
              <div class="communities-btn-hover">
            <span>Explore +</span>
          </div>
        </div>
      </a>
      <a href="[blogurl]" aria-label="communities-image" class="communities-image">
        <div class="communities-item canvas-wrapper"> <canvas width="440" height="344"></canvas> <img
            alt="communities-image" class="canvas-img img-responsive lazyload"
            src=" <?php echo get_stylesheet_directory_uri() ?>/images/communities-8.jpg">
          <em>Escondido</em>
           <em class="hover-title">Escondido</em>
              <div class="communities-btn-hover">
            <span>Explore +</span>
          </div>
        </div>
      </a>
      <a href="[blogurl]" aria-label="communities-image" class="communities-image">
        <div class="communities-item canvas-wrapper"> <canvas width="440" height="344"></canvas> <img
            alt="communities-image" class="canvas-img img-responsive lazyload"
            src=" <?php echo get_stylesheet_directory_uri() ?>/images/communities-9.jpg">
          <em>Cardiff</em>
           <em class="hover-title">Cardiff</em>
              <div class="communities-btn-hover">
            <span>Explore +</span>
          </div>
        </div>
      </a>
    </div>
  </div>
</section>
<!-- communities end -->
<!-- videos -->
<section class="hp-videos">
  <div class="region-videos-container">
    <div class="site-title">
      <h3>Featured</h3>
      <h2>Video</h2>
    </div>
    <div class="videos-slick">
      <a href="[blogurl]" aria-label="videos" class="videos-item">
        <div class="videos-img canvas-wrapper">
          <canvas width="1600px" height="600px"></canvas>
          <img alt="videos" class="img-videos canvas-img img-responsive lazyload"
            src="<?php echo get_stylesheet_directory_uri() ?>/images/videos-1.jpg" />
        </div>
        <div class="videos-content">
          <span class="ai-font-instagram"></span>
        </div>
      </a>
      <a href="[blogurl]" aria-label="videos" class="videos-item">
        <div class="videos-img canvas-wrapper">
          <canvas width="1600px" height="600px"></canvas>
          <img alt="videos" class="img-videos canvas-img img-responsive lazyload"
            src="<?php echo get_stylesheet_directory_uri() ?>/images/videos-2.jpg" />
        </div>
        <div class="videos-content">
          <span class="ai-font-instagram"></span>
        </div>
      </a>
    </div>
    <div class="videos-slick-arrow">
      <span class="ai-font-arrow-h-p prev"></span>
      <a href="[blogurl]" class="site-btn" aria-label="VIEW ALL videos">VIEW ALL videos</a>
      <span class="ai-font-arrow-h-n next"></span>
    </div>

  </div>
</section>
<!-- videos end -->
<!-- testimonials -->
<section class="hp-testimonials">
  <div class="region-testimonials-container">
    <div class="site-bg">
      <canvas class="lazyload" width="1600px" height="742px"
        data-bgset="<?php echo get_stylesheet_directory_uri(); ?>/images/testimonials-bg.jpg"></canvas>
    </div>
    <div class="site-title">
      <h3>What Our Clients Are Saying</h3>
      <h2>Testimonials</h2>
    </div>
    <div class="testimonials-slick">
      <div class="testimonials-content">
        <p class="first-p">Michael was a fantastic agent to work with. We are relocating to the San Diego area from northern California
          and didn't know much about the area. Michael was very knowledgeable about the market and the areas of
          San Diego that we were interested in moving to.
        </p>
        <p> I lost count of the number of homes he showed us, he was always positive and supportive, and helped us get
          into a bigger house in a more desirable location than I thought was possible when we first began looking.
        </p>
        <p>I would highly recommend Michael to any one looking to buy or sell. He's highly professional, very honest,
          always available to answer questions no matter how small or silly, and can close the deal.</p>
        <h3> Chip Hooley</h3>
      </div>
      <div class="testimonials-content">
        <p class="first-p">Michael was a fantastic agent to work with. We are relocating to the San Diego area from northern California
          and didn't know much about the area. Michael was very knowledgeable about the market and the areas of
          San Diego that we were interested in moving to.
        </p>
        <p> I lost count of the number of homes he showed us, he was always positive and supportive, and helped us get
          into a bigger house in a more desirable location than I thought was possible when we first began looking.
        </p>
        <p>I would highly recommend Michael to any one looking to buy or sell. He's highly professional, very honest,
          always available to answer questions no matter how small or silly, and can close the deal.</p>
        <h3> Chip Hooley</h3>
      </div>
    </div>
    <div class="testimonials-slick-arrow">
      <span class="ai-font-arrow-h-p prev"></span>
      <a href="[blogurl]" class="site-btn" aria-label="VIEW ALL testimonials">View All Testimonials +</a>
      <span class="ai-font-arrow-h-n next"></span>
    </div>

  </div>
</section>
<!-- testimonials end -->
<!-- social -->
<section class="hp-social">
  <div class="region-social-container">
    <div class="social-primary-section">
      <div class="site-title">
          <h3>Follow Us On</h3>
          <h2>Social Media</h2>
      </div>
      <div class="social-title">
        <div class="title">
        <h3>Check Us On</h3>
        <h2>Facebook</h2>
        </div>
        <span>@jacoborealty </span>
      </div>
      <div class="social-gallery-image-container">
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-fb-1.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-fb-2.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-fb-3.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-fb-4.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-fb-5.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-fb-6.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-fb-7.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-fb-8.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-fb-9.jpg">
          </div>
        </a>
      </div>
      <a href="[blogurl]" class="site-btn" aria-label="Like Us On Facebook">Like Us On Facebook +</a>
    </div>  
    <div class="social-secondary-section">
      <p class="social-p">Follow us on social media for the most exclusive real estate news and photos from our amazing listings</p>
      <div class="social-title">
        <div class="title">
          <h3>Check Us On</h3>
          <h2>Instagram</h2>
        </div>
        <span>@jacoborealtygroup</span>
      </div>
      <div class="social-gallery-image-container">
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-insta-1.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-insta-2.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-insta-3.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-insta-4.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-insta-5.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-insta-6.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-insta-7.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-insta-8.jpg">
          </div>
        </a>
        <a href="[blogurl]" aria-label="social-image" class="social-image">
          <div class="social-item canvas-wrapper"> <canvas width="190" height="180"></canvas> <img alt="social-image"
              class="canvas-img img-responsive lazyload"
              src=" <?php echo get_stylesheet_directory_uri() ?>/images/social-insta-9.jpg">
          </div>
        </a>
      </div>
      <a href="[blogurl]" class="site-btn" aria-label="Like Us On Instagram">Follow Us On Instagram +</a>
    </div>
  </div>
</div>
</section>
<!-- social end -->
<!-- contact -->
<section class="hp-contact">
  <div class="region-contact-container">
    <div class="site-bg 
    

      site-rgba
    

    ">
      <canvas class="lazyload" width="1616px" height="688px"
        data-bgset="<?php echo get_stylesheet_directory_uri(); ?>/images/contact-bg.jpg"></canvas>
    </div>
    <div class="site-title">
      <h3>Get In Touch</h3>
      <h2>Contact Us</h2>
    </div>
    <p>Sample</p>
    <div class="contact-form ">
      <?php echo do_shortcode('[contact-form-7 html_class="use-floating-validation-tip" id="34" title="hp template form 2"]')?>
    </div>
  </div>
</section>
<!-- contact end -->
<div class="hp-sidebar">
  <div id="scroll-down">
    <ul class="aios-section-nav"></ul>
    <ul class="comp-social-sidebar">
      <li class="side-smi"> <a href="[ai_client_facebook]" target="_blank" aria-label="facebook"> <span
            class="ai-font-facebook"></span> </a> </li>
      <li class="side-smi"> <a href="[ai_client_instagram]" target="_blank" aria-label="instagram"> <span
            class="ai-font-instagram"></span> </a> </li>
      <li class="side-smi"> <a href="[ai_client_zillow]" target="_blank" aria-label="zillow"> <span
            class="ai-font-zillow"></span> </a> </li>
      <li class="side-smi">
        <div class="phone">
          <?php echo do_shortcode('[ai_phone href="+1.407.415.9484"]
                            <span class="ai-font-phone">
                            </span>
                            <span class="hidden">phone</span>
                            [/ai_phone]')?>
        </div>
      </li>
      <li class="side-smi">
        <div class="email">
          <?php echo do_shortcode('[mail_to email="sellingwithstacy@gmail.com"]
                        <span class="ai-font-envelope-o">
                        </span>
                        <span class="hidden">email</span>
                        [/mail_to]')?>
        </div>
      </li>
    </ul>
  </div>
</div>
<?php get_footer(); ?>